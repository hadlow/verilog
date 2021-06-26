module alu (
	input clk,
	input [2:0] fn,
	input [31:0] x,
	input [31:0] y,
	input alt,

	output reg [31:0] out
);
	always @(posedge clk) begin
	end
endmodule

module cpu (
	input clk, reset
);
	reg [31:0] rom [0:4095];

	always @(posedge clk) begin

	end
endmodule
