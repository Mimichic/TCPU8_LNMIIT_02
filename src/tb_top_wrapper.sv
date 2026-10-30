module tb_top_wrapper;

reg clk = 0, rst_n = 0, prog_load = 0, run = 0;
reg [7:0] prog_data;
wire [7:0] out_data; 

toy_cpu dut(.clk(clk), .rst_n(rst_n), .prog_data(prog_data), .prog_load(prog_load), .run(run), .out_data(out_data)); //dut instantiation

always begin 	
#5 clk = ~clk; 
end

initial begin
	$dumpfile("waveform.vcd");
	$dumpvars(0,tb_top_wrapper);
	#20 rst_n = 1;
	#100 $finish;
end


endmodule