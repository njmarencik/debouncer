# Counter Debounce Test

This test uses a button to increment a counter that is displayed in binary using four LEDs. To prevent multiple increments per button press, the debouncer is instantiated and used to filter the signal coming from the button.


## Setup

I have synthesized this code using apio and tested it using an Upduino3.1 FPGA board. To use this code for yourself, configure apio to work with your FPGA, clone the repository, and run the following commands in this directory:

```
	sudo apio verify
	sudo apio build
	sudo apio upload
```

## Circuit

My circuit is set up with pin #25 on my Upduino board tied to an external pulldown resistor (220 ohms), and connected to a button that will connect the pin to +3.3V when pressed. My LEDs are connected to pins 21, 19, 18, and 11 with another 220 ohm resistor connecting them to ground.

