# DESIGN AND SIMULATION OF WATER PUMP CONTROL SYSTEM
Authors: Truong Trong Tin, Tran Anh Huy. 
Released in May 2022.

## DESCRIBE PROJECT
![pumpsystem](https://github.com/Tinsrice/PumpSystem/assets/116138140/5f4d5532-9927-4750-97eb-7f11f6f0b047)

A water pump control system and information display for the tank
- 2 active high level sensors located at high water level (full), SENSH and low water level (empty),
SENSL.
- The pump is controlled by a pulse signal (MOTOR) with a frequency of 1khz. When pumping, water enters
the tank through a flow sensor with SENSVI pulse output, frequency 1khz, 100 corresponding pulses.
corresponds to 1 liter. 
- 3 common anode 7-segment LEDs, displaying pumped water capacity, display value from 000 to 255.
- Water is discharged through the discharge valve controlled by the high-level positive signal VALVE, the discharge
request signal (P), the discharge valve has a flow sensor called SENSVO, returning a 1 kHz frequency pulse
signal, 100 pulses are equivalent to 1 liter.
## THE ACTIVITY IS DESCRIBED AS FOLLOWS
- When the water level reaches a low level, SENSL pulses and the machine automatically pumps. During
pumping, the LED displays the pump capacity. When the water level reaches a high level,
SENSH pulses and stops the pump. .
- When the P signal is at level 1, water is discharged through VALVE control, and at the same time the valve
has a flow sensor that returns a 1 kHz pulse signal, 100 pulses corresponding to 1 liter. During the discharging
process, the 7-segment LED displays the remaining capacity (injected flow minus discharged flow).

# Pump_system
