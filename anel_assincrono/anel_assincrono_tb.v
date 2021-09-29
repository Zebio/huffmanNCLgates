module anel_assincrono_tb();

reg reset,seletor;

wire [7:0] barr_soma,barr_latch1,barr_latch2;
wire ack_somador,ack_latch1,ack_latch2;

anel_assincrono dut(reset,seletor,barr_soma,barr_latch1,barr_latch2,
										ack_somador,ack_latch1,ack_latch2);

initial 
begin
	seletor=0;
	reset=0;
	#5;
	seletor=0;
	reset=1;
	#1;
	seletor=1;
	#59;
	$stop;

end
endmodule 