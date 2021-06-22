module testbench;
	reg clk;
	reg [7:0] cnt;

	initial begin
		clk = 0;
		cnt = 0;
		$display("starting");
	end

	always
		#5 clk = !clk;

	always @(posedge clk) begin
		cnt <= cnt + 1;
	end

	cpu c (
		.clk (clk),
		.reset (1'b0)
	);

	initial begin
		#100
		$display("done", cnt);
		$finish;
	end
endmodule
