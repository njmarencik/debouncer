# FPGA Button Debouncer Module

A Verilog module to debounce physical input from buttons or switches.


## About

This repository contains a Verilog module for button debouncing that I commonly use for projects. The latest version of the module, as well as binary counter example code, can be found here.

## Usage

To use the debouncer module, make sure that the debouncer.v file is included as part of your project. To create an instance of the debouncer, you will need to supply the following three inputs:

 - `clk` A clock signal
 - `btn` The button signal
 - `out` The wire used as the output signal


Here is how the debouncer is used in the included counter example:

```verilog
wire inc;

debouncer inc_btn(
	.clk(clk),
	.btn(pmod),
	.out(inc)
);
```

The example was written for a 12MHz clock and the debouncer module divides the clock input by default. The divided clock uses a 19-bit register, but can be changed using a parameter. Depending on your clock frequency, you may want to raise the divider size for faster clocks or lower it for slower clocks. Here is an example to change the divider for a device with a faster clock (20-bit divider):

```verilog
wire inc;

debouncer #(.DIV_CNT(20)) inc_btn(
	.clk(clk),
	.btn(pmod),
	.out(inc)
);
```


