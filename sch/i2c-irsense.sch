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
N 49600 48100 53200 48100 4
C 55900 44800 1 0 0 tmd2671.sym
{
T 57300 46500 5 10 1 1 0 0 1
refdes=U1
T 56700 46500 5 10 1 1 0 6 1
device=TMD2671
T 56695 44995 5 10 1 1 0 8 1
footprint=IRSENSE-CONNECT-2SIDE
}
N 50300 46000 55900 46000 4
N 49900 45700 55900 45700 4
N 57900 45700 58100 45700 4
N 58100 45700 58100 45400 4
N 58100 45400 57900 45400 4
C 56800 44200 1 0 0 gnd-1.sym
N 56900 44500 56900 44800 4
C 54100 48200 1 180 0 resistor-1.sym
{
T 53800 47800 5 10 0 0 180 0 1
device=RESISTOR
T 54100 48200 5 10 0 0 180 0 1
footprint=0805
T 53600 47900 5 10 1 1 180 3 1
refdes=R1
T 53600 48300 5 10 1 1 180 5 1
value=22
}
C 54100 47900 1 270 0 capacitor-1.sym
{
T 54800 47700 5 10 0 1 270 0 1
device=CAPACITOR
T 55000 47700 5 10 0 0 270 0 1
symversion=0.1
T 54400 46700 5 10 0 1 0 0 1
footprint=0805
T 54400 47600 5 10 1 1 0 0 1
refdes=C2
T 54400 47100 5 10 1 1 0 0 1
value=1uF
T 54400 46900 5 10 1 1 0 0 1
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
refdes=C3
T 58500 44800 5 10 1 1 0 0 1
value=1uF
T 58500 44600 5 10 1 1 0 0 1
comment=16V
}
C 58300 44200 1 0 0 gnd-1.sym
N 58400 44500 58400 44700 4
N 58400 45600 58400 48600 4
N 58400 46000 57900 46000 4
N 54100 48100 56900 48100 4
N 54300 48100 54300 47900 4
N 56900 48100 56900 46700 4
C 54200 46500 1 0 0 gnd-1.sym
N 54300 46800 54300 47000 4
C 40000 40000 0 0 0 title-bordered-C.sym
N 52600 48600 58400 48600 4
N 52600 48600 52600 48100 4
C 55800 46900 1 90 0 zener-1.sym
{
T 55200 47300 5 10 0 0 90 0 1
device=ZENER_DIODE
T 55300 47600 5 10 1 1 0 0 1
refdes=Z1
T 56000 46900 5 10 1 1 90 0 1
device=3.6V Zener
T 55800 46900 5 10 0 0 0 0 1
footprint=SOD123
}
C 47400 46100 1 0 0 usb-microb.sym
{
T 47500 48400 5 10 1 1 0 0 1
refdes=J1
}
C 48200 45800 1 0 0 gnd-1.sym
N 49600 46900 49600 46100 4
N 49600 46100 48300 46100 4
N 49600 47800 50300 47800 4
N 50300 47800 50300 46000 4
N 49600 47500 49900 47500 4
N 49900 47500 49900 45700 4
N 55600 47800 55600 48100 4
N 55600 46900 55600 46800 4
N 55600 46800 54300 46800 4
C 51300 48100 1 270 0 capacitor-1.sym
{
T 52000 47900 5 10 0 1 270 0 1
device=CAPACITOR
T 52200 47900 5 10 0 0 270 0 1
symversion=0.1
T 51600 46900 5 10 0 1 0 0 1
footprint=0805
T 51600 47800 5 10 1 1 0 0 1
refdes=C1
T 51600 47300 5 10 1 1 0 0 1
value=10uF
T 51600 47100 5 10 1 1 0 0 1
comment=6.3V
}
C 51400 46900 1 0 0 gnd-1.sym
