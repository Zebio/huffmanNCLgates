module anel_assincrono(reset,seletor);

input reset;
input seletor;


wire[7:0]barr_source1,barr_source0,barr_soma,barr_latch1,barr_latch2,barr_mux;
wire ack_somador,ack_latch1,ack_latch2;

estagio_source_zero est_0(reset,ack_somador,barr_source0);

estagio_source_um est_1(reset,ack_somador,barr_source1);

assign barr_mux= (seletor)?  barr_latch2 : barr_source0;


estagio_somador est_somador(reset,ack_latch1,barr_source1,barr_mux,
					barr_source0[1:0],ack_somador,barr_soma);
					
estagio_latch latch1(reset,ack_latch2,barr_soma,ack_latch1,barr_latch1);

estagio_latch latch2(reset,ack_somador,barr_latch1,ack_latch2,barr_latch2);

endmodule 
					
