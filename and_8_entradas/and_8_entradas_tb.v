`timescale 1 s/100 ms;  // time-unit = 1 ns, precision = 10 ps


module and_8_entradas_tb();

reg  [7:0] e;

wire z;


reg [8:0]i;

// duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
localparam period = 1; 

and_8_entradas dut(e,z);

initial 
begin
	#3600;				//1u x 10^6 = 1ms
	$stop;
end


endmodule 