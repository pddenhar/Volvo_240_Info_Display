# Volvo 240 Info Display
This is a OLED dashboard module for the Volvo 240 that provides speedometer, tachometer, and battery voltage.

## PCB
The PCB layout is in KiCAD. A BOM used to purchase board components at Digikey can be found in the PCB Layout directory as well.

## Wiring
The back of the dashboard cluster has an open collector signal for the speedometer pulses (reverse engineered with help from http://cleanflametrap.com/speedo.html). This already has a 12V pullup on it, so all you need to do is connect a lead to the output.

The tachometer signal can be connected to the red and white wire present behind the gauge cluster (not connected in 240s without a tach from the factory).

12V Power and ground can be spliced into the 3-pin power cable for the gauge cluster. 

## Code
The Arduino code is compiled for the ATtiny84. You will need the ATTinyCore board library. 