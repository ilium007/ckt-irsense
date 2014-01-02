v 20110115 2
T 67000 40900 9 10 1 0 0 0 1
Reflective IR model railroad sensor
T 66800 40600 9 10 1 0 0 0 1
ckt-irsense.sch
T 67000 40300 9 10 1 0 0 0 1
1
T 68500 40300 9 10 1 0 0 0 1
1
T 70800 40300 9 10 1 0 0 0 1
Nathan D. Holmes
T 70800 40600 9 10 1 0 0 0 1
$Revision: 82 $
C 40000 40000 0 0 0 title-bordered-D.sym
C 58100 53600 1 0 1 gnd-1.sym
C 58800 54500 1 0 1 78l05-1.sym
{
T 57200 55800 5 10 0 0 0 6 1
device=7805
T 57400 55500 5 10 1 1 0 0 1
refdes=U2
T 58800 54500 5 10 0 0 0 0 1
footprint=SOT89
}
C 58900 55100 1 270 0 Cap_H-2.sym
{
T 59200 54500 5 10 1 1 270 0 1
refdes=C1
T 60400 55100 5 10 0 0 270 0 1
device=Capacitor
T 58900 55000 5 10 1 1 270 2 1
value=10uF 25V
T 58900 55100 5 10 0 0 0 0 1
footprint=cap-elec-Panasonic-FK--D6.30-H5.80-mm
}
C 49200 50700 1 0 0 5V-plus-1.sym
C 55500 55300 1 0 0 5V-plus-1.sym
C 56500 55100 1 270 0 capacitor-1.sym
{
T 57200 54900 5 10 0 0 270 0 1
device=CAPACITOR
T 57000 54900 5 10 1 1 270 0 1
refdes=C2
T 57400 54900 5 10 0 0 270 0 1
symversion=0.1
T 56300 55000 5 10 1 1 270 0 1
value=1uF 10V
T 56500 55100 5 10 0 0 0 0 1
footprint=0805
}
C 55500 55100 1 270 0 capacitor-1.sym
{
T 56200 54900 5 10 0 0 270 0 1
device=CAPACITOR
T 56000 54900 5 10 1 1 270 0 1
refdes=C3
T 56400 54900 5 10 0 0 270 0 1
symversion=0.1
T 55300 55100 5 10 1 1 270 0 1
value=0.1uF 10V
T 55500 55100 5 10 0 0 0 0 1
footprint=0805
}
C 48900 52400 1 0 0 photodiode-1.sym
{
T 48600 52200 5 10 1 1 90 0 1
device=VSMB10940
T 48800 52700 5 10 1 1 90 0 1
refdes=D2
}
C 49600 49600 1 90 0 led-3.sym
{
T 48850 49450 5 10 1 1 90 0 1
device=VEMD10940F
T 49050 50050 5 10 1 1 90 0 1
refdes=D1
T 49600 49600 5 10 0 0 0 0 1
footprint=1206
}
N 49400 50700 49400 50500 4
C 52500 48600 1 90 0 pot-bourns.sym
{
T 51600 49400 5 10 0 0 90 0 1
device=VARIABLE_RESISTOR
T 52700 48900 5 10 1 1 90 0 1
refdes=R2
T 52200 49200 5 10 1 1 90 0 1
value=10k
T 52500 48600 5 10 0 0 90 0 1
footprint=TC33_trimmer
}
C 51400 48500 1 0 1 opamp-1.sym
{
T 50700 49300 5 10 1 1 0 6 1
device=MCP601
T 50700 49100 5 10 1 1 0 6 1
refdes=U1
T 50700 49900 5 10 0 0 0 6 1
symversion=0.1
}
C 50000 48400 1 0 1 2N2222-1.sym
{
T 49100 49100 5 10 0 0 0 6 1
device=2N2222
T 49100 48900 5 10 1 1 0 6 1
refdes=Q1
}
N 49400 49600 49400 49400 4
N 50000 48900 50400 48900 4
C 51000 48200 1 0 1 gnd-1.sym
C 50700 49300 1 0 0 5V-plus-1.sym
C 49500 46900 1 90 0 resistor-1.sym
{
T 49100 47200 5 10 0 0 90 0 1
device=RESISTOR
T 49200 47100 5 10 1 1 90 0 1
refdes=R1
T 49700 47100 5 10 1 1 90 0 1
value=1.5k
T 49500 46900 5 10 0 0 90 0 1
footprint=0805
}
N 49400 47800 49400 48400 4
C 49500 46600 1 0 1 gnd-1.sym
N 49400 48000 51400 48000 4
N 51400 48000 51400 48700 4
C 52500 48300 1 0 1 gnd-1.sym
N 51400 49100 51900 49100 4
C 55400 49500 1 0 0 ATtiny85-1.sym
{
T 55675 52950 5 10 0 0 0 0 1
device=ATtiny85
T 56500 50950 5 10 1 1 0 0 1
refdes=U2
T 55675 52150 5 10 0 0 0 0 1
footprint=SO8
}
C 55600 47500 1 0 0 avrprog-1.sym
{
T 55600 49100 5 10 0 1 0 0 1
device=AVRPROG
T 56200 48800 5 10 1 1 0 0 1
refdes=J1
}
N 55600 47700 55100 47700 4
N 55100 47700 55100 51300 4
N 55100 49700 55400 49700 4
N 55600 48100 54900 48100 4
N 54900 48100 54900 50300 4
N 54900 50300 55400 50300 4
N 55600 48500 54700 48500 4
N 54700 48500 54700 50500 4
C 57300 47400 1 0 1 gnd-1.sym
C 57000 48600 1 0 0 5V-plus-1.sym
N 57000 48500 57200 48500 4
N 57200 48500 57200 48600 4
N 57000 48100 57500 48100 4
N 57500 48100 57500 47100 4
N 57500 47100 54500 47100 4
N 54500 47100 54500 50700 4
N 54500 50700 55400 50700 4
N 52400 49500 52400 50500 4
N 57200 47700 57000 47700 4
C 57400 49400 1 0 1 gnd-1.sym
C 57200 50800 1 0 0 5V-plus-1.sym
N 57200 50700 57400 50700 4
N 57400 50700 57400 50800 4
C 55200 51300 1 90 0 resistor-1.sym
{
T 54800 51600 5 10 0 0 90 0 1
device=RESISTOR
T 54900 51500 5 10 1 1 90 0 1
refdes=R5
T 55400 51500 5 10 1 1 90 0 1
value=10k
T 55200 51300 5 10 0 0 90 0 1
footprint=0805
}
C 54900 52200 1 0 0 5V-plus-1.sym
C 50700 51600 1 0 0 VSOP58436-1.sym
{
T 50975 55050 5 10 0 0 0 0 1
device=ATtiny25
T 51000 53050 5 10 1 1 0 0 1
refdes=U3
T 50975 54250 5 10 0 0 0 0 1
footprint=VDFN8
}
N 49400 52400 50700 52400 4
N 49400 53300 50700 53300 4
N 50700 53300 50700 52800 4
N 50700 52400 50700 51400 4
N 50700 51400 53100 51400 4
N 52500 51400 52500 52400 4
C 51700 51100 1 0 1 gnd-1.sym
C 53200 53000 1 90 0 resistor-1.sym
{
T 52800 53300 5 10 0 0 90 0 1
device=RESISTOR
T 52900 53200 5 10 1 1 90 0 1
refdes=R3
T 53400 53200 5 10 1 1 90 0 1
value=100
T 53200 53000 5 10 0 0 90 0 1
footprint=0805
}
C 52900 53900 1 0 0 5V-plus-1.sym
C 53300 51400 1 90 0 capacitor-1.sym
{
T 52600 51600 5 10 0 0 90 0 1
device=CAPACITOR
T 52800 51600 5 10 1 1 90 0 1
refdes=C4
T 52400 51600 5 10 0 0 90 0 1
symversion=0.1
T 53500 51400 5 10 1 1 90 0 1
value=0.22uF 10V
T 53300 51400 5 10 0 0 180 0 1
footprint=0805
}
N 53100 53000 53100 52300 4
N 52500 52800 53100 52800 4
N 52500 52600 54100 52600 4
N 54100 52600 54100 50100 4
N 54100 50100 55400 50100 4
C 59500 48600 1 0 0 mosfet-with-diode-1.sym
{
T 60400 49100 5 10 0 0 180 8 1
device=NPN_TRANSISTOR
T 59400 49300 5 10 1 1 0 0 1
refdes=Q4
T 58400 49600 5 10 1 1 0 0 1
value=IRFML8244TRPBF
T 59500 48600 5 10 0 0 270 8 1
footprint=SOT23_MOS
}
C 60200 46700 1 0 1 gnd-1.sym
N 60100 47000 60100 48600 4
C 58800 48000 1 90 0 led-3.sym
{
T 59050 48250 5 10 1 1 90 0 1
device=RED
T 58250 48350 5 10 1 1 90 0 1
refdes=D3
T 58800 48000 5 10 0 0 0 0 1
footprint=1206
}
C 58700 47100 1 90 0 resistor-1.sym
{
T 58300 47400 5 10 0 0 90 0 1
device=RESISTOR
T 58400 47300 5 10 1 1 90 0 1
refdes=R4
T 58900 47300 5 10 1 1 90 0 1
value=1k
T 58700 47100 5 10 0 0 90 0 1
footprint=0805
}
N 60100 47000 58600 47000 4
N 58600 47000 58600 47100 4
N 58600 48900 58600 49100 4
N 55300 49100 59500 49100 4
N 55400 49900 55300 49900 4
N 55300 49900 55300 49100 4
N 57200 49700 57300 49700 4
C 61400 54100 1 0 0 header3-1.sym
{
T 62400 54750 5 10 0 0 0 0 1
device=HEADER3
T 61800 55400 5 10 1 1 0 0 1
refdes=J?
}
N 60100 49600 60100 54300 4
N 60100 54300 61400 54300 4
C 61200 54400 1 0 1 gnd-1.sym
N 61100 54700 61400 54700 4
C 60500 54900 1 0 1 schottky-1.sym
{
T 60178 55572 5 10 0 0 0 6 1
device=DIODE
T 60200 55400 5 10 1 1 0 6 1
refdes=D4
T 60159 55732 5 10 0 1 0 6 1
footprint=SOD123
T 60700 54600 5 10 1 1 0 6 1
model=MBR0540LT1G
}
N 60500 55100 61400 55100 4
N 58800 55100 59600 55100 4
N 55700 55300 55700 55100 4
N 55700 55100 57200 55100 4
N 55700 54200 59100 54200 4
N 58000 53900 58000 54200 4
N 58000 54200 58000 54500 4
C 52700 50400 1 0 0 resistor-1.sym
{
T 53000 50800 5 10 0 0 0 0 1
device=RESISTOR
T 52900 50700 5 10 1 1 0 0 1
refdes=R6
T 52900 50200 5 10 1 1 0 0 1
value=5.1k
T 52700 50400 5 10 0 0 0 0 1
footprint=0805
}
N 52400 50500 52700 50500 4
N 53600 50500 55400 50500 4
