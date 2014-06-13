v 20130925 2
T 55000 40900 9 10 1 0 0 0 1
Reflective IR Model Railroad Sensor (v3)
T 54800 40600 9 10 1 0 0 0 1
ckt-irsense.sch
T 55000 40300 9 10 1 0 0 0 1
1
T 56500 40300 9 10 1 0 0 0 1
1
T 58800 40300 9 10 1 0 0 0 1
Nathan Holmes / Michael Petersen
C 46100 44400 1 0 0 avrprog-1.sym
{
T 46100 46000 5 10 0 1 0 0 1
device=AVRPROG
T 46100 44400 5 10 0 0 0 0 1
footprint=TC2030-NL
T 46700 45700 5 10 1 1 0 0 1
refdes=J1
}
C 47800 44200 1 0 1 gnd-1.sym
N 47500 45400 47700 45400 4
N 47700 45400 47700 48100 4
N 47500 45000 50000 45000 4
N 50000 44800 48000 44800 4
N 48000 44800 48000 46000 4
N 48000 46000 45800 46000 4
N 45800 46000 45800 45400 4
N 45800 45400 46100 45400 4
N 50000 44600 48000 44600 4
N 48000 44100 48000 44600 4
N 48000 44100 45500 44100 4
N 45500 44100 45500 45000 4
N 45500 45000 46100 45000 4
C 51900 43500 1 0 0 gnd-1.sym
N 45800 48100 54300 48100 4
C 55900 44800 1 0 0 tmd2671.sym
{
T 57300 46500 5 10 1 1 0 0 1
refdes=U3
T 56700 46500 5 10 1 1 0 6 1
device=TMD2671
T 56695 44995 5 10 1 1 0 8 1
footprint=TMD2671-2side
}
N 50100 46000 55900 46000 4
N 49700 45700 55900 45700 4
N 57900 45700 58100 45700 4
N 58100 45700 58100 45400 4
N 58100 45400 57900 45400 4
C 56800 44200 1 0 0 gnd-1.sym
N 56900 44500 56900 44800 4
C 55200 48200 1 180 0 resistor-1.sym
{
T 54900 47800 5 10 0 0 180 0 1
device=RESISTOR
T 55200 48200 5 10 0 0 180 0 1
footprint=0805
T 54700 47900 5 10 1 1 180 3 1
refdes=R2
T 54700 48300 5 10 1 1 180 5 1
value=22
}
C 55200 47900 1 270 0 capacitor-1.sym
{
T 55900 47700 5 10 0 1 270 0 1
device=CAPACITOR
T 56100 47700 5 10 0 0 270 0 1
symversion=0.1
T 55500 46700 5 10 0 1 0 0 1
footprint=0805
T 55500 47600 5 10 1 1 0 0 1
refdes=C4
T 55500 47100 5 10 1 1 0 0 1
value=1uF
T 55500 46900 5 10 1 1 0 0 1
comment=16V
}
C 58200 45600 1 270 0 capacitor-1.sym
{
T 58900 45400 5 10 0 1 270 0 1
device=CAPACITOR
T 59100 45400 5 10 0 0 270 0 1
symversion=0.1
T 58500 44400 5 10 0 1 0 0 1
footprint=0805
T 58500 45300 5 10 1 1 0 0 1
refdes=C5
T 58500 44800 5 10 1 1 0 0 1
value=1uF
T 58500 44600 5 10 1 1 0 0 1
comment=16V
}
C 58300 44200 1 0 0 gnd-1.sym
N 58400 44500 58400 44700 4
N 58400 45600 58400 48600 4
N 58400 46000 57900 46000 4
N 55200 48100 56900 48100 4
N 55400 48100 55400 47900 4
N 56900 48100 56900 46700 4
C 55300 46500 1 0 0 gnd-1.sym
N 55400 46800 55400 47000 4
N 47500 44600 47700 44600 4
N 47700 44600 47700 44500 4
N 53300 43000 53300 46000 4
N 54100 42700 54100 45700 4
C 44200 47500 1 0 0 78l33-1.sym
{
T 45800 48800 5 10 0 0 0 0 1
device=78L33
T 45500 48500 5 10 1 1 0 6 1
refdes=U1
T 44800 47700 5 10 1 1 0 8 1
footprint=SOT89
}
C 40000 40000 0 0 0 title-bordered-C.sym
C 43400 47800 1 270 0 capacitor-1.sym
{
T 44100 47600 5 10 0 1 270 0 1
device=CAPACITOR
T 43700 47500 5 10 1 1 0 0 1
refdes=C1
T 44300 47600 5 10 0 0 270 0 1
symversion=0.1
T 43700 47000 5 10 1 1 0 0 1
value=10uF
T 43700 46600 5 10 0 1 0 0 1
footprint=0805
T 43700 46800 5 10 1 1 0 0 1
comment=25V
}
C 42000 48300 1 90 1 hole-1.sym
{
T 42000 48300 5 10 0 1 270 2 1
device=HOLE
T 42000 48300 5 10 0 0 0 6 1
footprint=JUMPER1
T 41700 48400 5 10 1 1 0 4 1
refdes=H1
}
T 41400 48100 9 10 1 0 0 7 1
V+
C 42000 46800 1 90 1 hole-1.sym
{
T 42000 46800 5 10 0 1 270 2 1
device=HOLE
T 42000 46800 5 10 0 0 0 6 1
footprint=JUMPER1
T 41700 46900 5 10 1 1 0 4 1
refdes=H2
}
T 41400 46600 9 10 1 0 0 7 1
GND
N 43200 48100 44200 48100 4
N 43600 47800 43600 48100 4
N 43600 46900 43600 46600 4
N 42000 46600 46000 46600 4
N 45000 46600 45000 47500 4
C 45800 47800 1 270 0 capacitor-1.sym
{
T 46500 47600 5 10 0 1 270 0 1
device=CAPACITOR
T 46100 47500 5 10 1 1 0 0 1
refdes=C2
T 46700 47600 5 10 0 0 270 0 1
symversion=0.1
T 46100 47000 5 10 1 1 0 0 1
value=22uF
T 46300 47200 5 10 1 1 0 0 1
footprint=tantalum_a
T 46100 46800 5 10 1 1 0 0 1
description=16V, Tantalum
}
N 46000 47800 46000 48100 4
N 46000 46900 46000 46600 4
C 42300 47900 1 0 0 schottky-1.sym
{
T 42622 48572 5 10 0 0 0 0 1
device=DIODE
T 42600 48400 5 10 1 1 0 0 1
refdes=D1
T 42800 47500 5 10 1 1 0 5 1
footprint=SOD123
T 42800 47700 5 10 1 1 0 5 1
model=MBR0540
}
N 42000 48100 42300 48100 4
N 48900 50800 51700 50800 4
N 49200 50000 51700 50000 4
C 49700 48900 1 270 0 hole-1.sym
{
T 49700 48900 5 10 0 1 270 0 1
device=HOLE
T 49700 48900 5 10 0 0 0 0 1
footprint=JUMPER1
T 50000 49000 5 10 1 1 0 4 1
refdes=H5
}
T 50300 48700 9 10 1 0 0 1 1
ADJ
C 42900 46100 1 0 1 gnd-1.sym
N 42800 46400 42800 46600 4
C 51700 49500 1 0 0 DMN5L06DMK.sym
{
T 52000 51500 5 10 0 0 0 0 1
device=PS2501-1
T 53300 51600 5 10 1 1 0 0 1
refdes=U4
T 53095 51600 5 10 1 1 0 6 1
device=DMN5L06DMK
T 52695 49700 5 10 1 1 0 5 1
footprint=SOT26
}
N 51700 51200 48000 51200 4
N 51700 50400 48000 50400 4
C 48000 50600 1 90 1 hole-1.sym
{
T 48000 50600 5 10 0 1 270 2 1
device=HOLE
T 48000 50600 5 10 0 0 0 6 1
footprint=JUMPER1
T 47700 50700 5 10 1 1 0 4 1
refdes=H4
}
C 48000 51400 1 90 1 hole-1.sym
{
T 48000 51400 5 10 0 1 270 2 1
device=HOLE
T 48000 51400 5 10 0 0 0 6 1
footprint=JUMPER1
T 47700 51500 5 10 1 1 0 4 1
refdes=H3
}
T 47400 50400 9 10 1 0 0 7 1
DETECT
T 47400 51200 9 10 1 0 0 7 1
\_DETECT
C 54100 49900 1 0 1 gnd-1.sym
N 54000 50200 54000 51200 4
N 54000 51200 53700 51200 4
N 53700 50400 54000 50400 4
C 50000 43800 1 0 0 ATtiny85-1.sym
{
T 51300 45250 5 10 1 1 0 0 1
refdes=U2
T 51300 43700 5 10 1 1 0 8 1
footprint=TSSOP8W
T 50900 45250 5 10 1 1 0 6 1
device=ATtiny45
}
N 48900 44400 50000 44400 4
N 51800 45000 53000 45000 4
N 48300 46300 50900 46300 4
N 48300 43800 48300 46300 4
N 48300 44000 50000 44000 4
N 46100 44600 45800 44600 4
N 45800 44600 45800 43800 4
N 45800 43800 48300 43800 4
N 51800 44000 52300 44000 4
N 52000 44000 52000 43800 4
N 49800 45000 49800 43000 4
N 49800 43000 53300 43000 4
N 54100 42700 49500 42700 4
N 49500 42700 49500 44600 4
N 48600 44200 50000 44200 4
C 55100 48900 1 0 1 gnd-1.sym
C 55200 50700 1 90 0 led-3.sym
{
T 55200 50700 5 10 0 0 0 0 1
footprint=1206
T 55450 50950 5 10 1 1 90 0 1
device=RED
T 54650 51050 5 10 1 1 90 0 1
refdes=D2
}
C 55100 49500 1 90 0 resistor-1.sym
{
T 54700 49800 5 10 0 0 90 0 1
device=RESISTOR
T 55100 49500 5 10 0 0 90 0 1
footprint=0805
T 54800 49700 5 10 1 1 90 0 1
refdes=R3
T 55300 49700 5 10 1 1 90 0 1
value=1k
}
N 55000 49200 55000 49500 4
N 55000 50700 55000 50400 4
N 55000 51600 55000 52000 4
N 55000 52000 51000 52000 4
N 51000 52000 51000 50800 4
C 52100 44900 1 270 0 capacitor-1.sym
{
T 52800 44700 5 10 0 1 270 0 1
device=CAPACITOR
T 53000 44700 5 10 0 0 270 0 1
symversion=0.1
T 52400 43700 5 10 0 1 0 0 1
footprint=0805
T 52400 44600 5 10 1 1 0 0 1
refdes=C3
T 52400 44100 5 10 1 1 0 0 1
value=0.1uF
T 52400 43900 5 10 1 1 0 0 1
comment=16V
}
N 48900 44400 48900 50800 4
N 49200 44800 49200 50000 4
N 53700 48600 58400 48600 4
N 53700 48600 53700 48100 4
C 49500 46900 1 0 0 rpack4-1.sym
{
T 49800 47300 5 10 0 0 0 0 1
device=RESISTOR
T 51200 47600 5 10 1 1 0 0 1
refdes=R1
T 51200 47200 5 10 1 1 0 0 1
device=RAVF164DJT10K0
T 51200 47000 5 10 1 1 0 0 1
footprint=RPACK4-1206
T 51200 47400 5 10 1 1 0 0 1
value=10K
}
N 50100 46000 50100 46900 4
N 49700 46900 49700 45700 4
N 48600 44200 48600 48700 4
N 48600 46600 50500 46600 4
N 49700 48700 48600 48700 4
N 49700 47800 49700 48100 4
N 50100 47800 50100 48100 4
N 50500 47800 50500 48100 4
N 50900 47800 50900 48100 4
N 52300 44900 52300 45000 4
N 53000 45000 53000 48100 4
N 50500 46600 50500 46900 4
N 50900 46300 50900 46900 4
