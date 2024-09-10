
module main (

	input pmod, clk,
	output reg [3:0] led

);
	
	wire inc;

	debouncer inc_btn(
		.clk(clk),
		.btn(pmod),
		.out(inc)
	);

	always @ (posedge inc) begin
		led <= led + 1'b1;
	end

endmodule


