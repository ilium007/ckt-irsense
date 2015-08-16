/*************************************************************************
Title:    CKT-IRSENSE - Station Stop Feature
Authors:  Michael Petersen <railfan@drgw.net>
          Nathan D. Holmes <maverick@drgw.net>
File:     $Id: $
License:  GNU General Public License v3

LICENSE:
    Copyright (C) 2015 Michael Petersen & Nathan Holmes

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

*************************************************************************/

// When triggered, D goes low (stop train)
// 5 seconds later, /D goes low (triggers audio)
// Adjustable delay later, D goes high (starts train)
// Once no longer triggered, /D goes high

#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <util/delay.h>

#define   TMD26711_ADDR   0x39
#define   INFO_ADDR       0x20

#define   PROXIMITY_THRESHOLD   0x300
#define   PPULSE_DEFAULT        8

#define   ON_DEBOUNCE_DEFAULT   1
#define   OFF_DEBOUNCE_DEFAULT  1

#define   SDA   PB0
#define   SCL   PB2

typedef enum {
	STATE_IDLE,
	STATE_WAIT,
	STATE_DELAY,
	STATE_RESET,
} StateMachine;

uint16_t timer = 0;

static inline void sda_low() { DDRB |= _BV(SDA); _delay_us(10); }
static inline void sda_high() { DDRB &= ~_BV(SDA); _delay_us(10); }
static inline void scl_low() { PORTB &= ~_BV(SCL); _delay_us(10); }
static inline void scl_high() { PORTB |= _BV(SCL); _delay_us(10); }

volatile uint8_t ticks;
volatile uint8_t decisecs = 0;

void initialize100HzTimer(void)
{
	// Set up timer 0 for 100Hz interrupts
	TCNT0 = 0;
	OCR0A = 78;  // 8MHz / 1024 / 78 = 100Hz
	ticks = 0;
	decisecs = 0;
	TCCR0A = _BV(WGM01);
	TCCR0B = _BV(CS02) | _BV(CS00);  // 1024 prescaler
	TIMSK |= _BV(OCIE0A);
}

ISR(TIMER0_COMPA_vect)
{
	if (++ticks >= 10)
	{
		ticks = 0;
		decisecs++;
		if(timer)
			timer--;
	}
}

void i2cStart(void)
{
	scl_high();
	sda_low();
	scl_low();
	sda_high();
}

void i2cStop(void)
{
	scl_low();
	sda_low();
	scl_high();
	sda_high();
}

uint8_t i2cWriteByte(uint8_t byte)
{
	uint8_t i = 0x80, ack;

	do
	{
		if(byte & i)
		{
			sda_high();
		}
		else
		{
			sda_low();
		}
		
		scl_high();
		scl_low();
		
		i >>= 1;
	} while(i);

	sda_high();  // Release SDA
	
	scl_high();
	if(PINB & _BV(SDA))
		ack = 0;
	else
		ack = 1;
	scl_low();

	return ack;
}

uint8_t i2cReadByte(uint8_t ack)
{
	uint8_t i, data = 0;

	for(i=0; i<8; i++)
	{
		data = data << 1;
		scl_high();
		if(PINB & _BV(SDA))
			data |= 0x01;
		scl_low();
	}
	
	if(ack)
		sda_low();
	scl_high();
	scl_low();
	sda_high();

	return data;
}

uint8_t writeByte(uint8_t addr, uint8_t cmd, uint16_t writeVal)
{
	uint8_t ack;
	
	i2cStart();
	
	i2cWriteByte(addr << 1);
	i2cWriteByte(cmd);
	ack = i2cWriteByte(writeVal);

	i2cStop();

	return ack;
}

uint16_t readWord(uint8_t addr, uint8_t cmd)
{
	uint16_t data;
	
	i2cStart();
	
	i2cWriteByte(addr << 1);
	i2cWriteByte(cmd);

	i2cStart();

	i2cWriteByte((addr << 1) | 0x01);
	data = i2cReadByte(1);
	data |= ((uint16_t)i2cReadByte(0) << 8);
	
	i2cStop();

	return data;
}

void init(void)
{
	MCUSR = 0;
	wdt_reset();
	wdt_enable(WDTO_250MS);
	wdt_reset();

	// Configure ADC
	ADMUX = 0x02;  // ref = VCC, right-justified, input = PB4 (ADC2)
	ADCSRA = 0x87; // ADC enabled, prescaler = 128
	DIDR0 = _BV(ADC2D);  // Disable ADC2 digital input buffer
	
	PORTB = _BV(SCL) | _BV(PB1);  // All outputs low except SCL and PB1
	DDRB |= _BV(PB1) | _BV(SCL) | _BV(PB3);
}

int main(void)
{
	uint16_t proximity;
	uint8_t detect = 0;
	uint16_t count = 0;  // 256 decisecs * 60 (long delay mode) = 15360 max count
	uint8_t ppulse;
	int16_t adc, adc_filt = 0;
	int16_t on_debounce, off_debounce, delay = 0;  // Signed so the math for delay doesn't wrap
	StateMachine state = STATE_IDLE;
	
	// Application initialization
	init();
	initialize100HzTimer();
	sei();

	// Initialize TMD26711 (bit 0x80 set to indicate command)
	writeByte(TMD26711_ADDR, 0x80|0x00, 0x00);   // Start with everything disabled
	writeByte(TMD26711_ADDR, 0x80|0x01, 0xFF);   // Minimum ATIME
	writeByte(TMD26711_ADDR, 0x80|0x02, 0xFF);   // Maximum integration time
	writeByte(TMD26711_ADDR, 0x80|0x03, 0xFF);   // Minimum wait time
	
	// Note: IRQ not currently used
	writeByte(TMD26711_ADDR, 0x80|0x08, 0x00);   // Set interrupt low threshold to 0x0000
	writeByte(TMD26711_ADDR, 0x80|0x09, 0x00);
	writeByte(TMD26711_ADDR, 0x80|0x0A, 0x00);   // Set interrupt low threshold to 0x0300
	writeByte(TMD26711_ADDR, 0x80|0x0B, 0x03);
	writeByte(TMD26711_ADDR, 0x80|0x0C, 0x10);   // Single out-of-range cycle triggers interrupt

	writeByte(TMD26711_ADDR, 0x80|0x0D, 0x00);   // Long wait disabled
	writeByte(TMD26711_ADDR, 0x80|0x0E, PPULSE_DEFAULT); // Pulse count
	writeByte(TMD26711_ADDR, 0x80|0x0F, 0x20);   // 100% LED drive strength, Use channel 1 diode (ch 1 seems less sensitive to fluorescent light)

	writeByte(TMD26711_ADDR, 0x80|0x00, 0x27);   // Power ON, Enable proximity, Enable proximity interrupt (not used currently)

	while (1)
	{
		wdt_reset();

		// Detection State Machine
		if(decisecs >= 1)
		{
			decisecs = 0;

			ppulse = PPULSE_DEFAULT;
			writeByte(TMD26711_ADDR, 0x80|0x0E, ppulse);

			// Read ADC
			ADCSRA |= _BV(ADSC);  // Trigger conversion
			while(ADCSRA & _BV(ADSC));
			adc = ADC;
			adc_filt = adc_filt + ((adc - adc_filt) / 4);

			on_debounce = ON_DEBOUNCE_DEFAULT;
			off_debounce = OFF_DEBOUNCE_DEFAULT;

			delay = ((1023 - adc_filt) - 100 + 2) / 4;  // Invert, shift, divide-by-4, round
			if(delay < 1)
				delay = 1;  // Limit to 1
			
			// Telemetry
			writeByte(INFO_ADDR, adc_filt >> 8, adc_filt & 0xFF);

			proximity = readWord(TMD26711_ADDR, 0x80|0x20|0x18);  // Read data register (0x80 = command, 0x20 = auto-increment)

			if(!detect & (proximity >= PROXIMITY_THRESHOLD))
			{
				// ON debounce
				count++;
				if(count > on_debounce)
				{
					detect = 1;
					count = 0;
				}
			}
			else if(!detect & (proximity < PROXIMITY_THRESHOLD))
			{
				count = 0;
			}

			else if(detect & (proximity < PROXIMITY_THRESHOLD))
			{
				// OFF debounce
				count++;
				if(count > off_debounce)
				{
					detect = 0;
					count = 0;
				}
			}
			else if(detect & (proximity >= PROXIMITY_THRESHOLD))
			{
				count = 0;
			}
		}

		// Output Driver State Machine
		switch(state)
		{
			case STATE_IDLE:
				if(1 == detect)
				{
					PORTB |= _BV(PB1);
					timer = 50;  // 5 second wait
					state = STATE_WAIT;
				}
				else
				{
					PORTB &= ~_BV(PB1);
					PORTB &= ~_BV(PB3);
				}
				break;
			case STATE_WAIT:
				if(!timer)
				{
					PORTB |= _BV(PB3);
					timer = delay;
					state = STATE_DELAY;
				}
				break;
			case STATE_DELAY:
				if(!timer)
				{
					PORTB &= ~_BV(PB1);
					state = STATE_RESET;
				}
				break;
			case STATE_RESET:
				if(0 == detect)
				{
					PORTB &= ~_BV(PB3);
					state = STATE_IDLE;
				}
				break;
		}
	}
}

