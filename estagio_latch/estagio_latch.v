module estagio_latch(reset,ack_in,dados_in,ack_out,dados_out);

input 		reset;
input 		ack_in;
input [7:0] dados_in;
output 		ack_out;
output[7:0] dados_out;

wire det,ctrl_signal;
det_4bits detector(dados_in,det);

muller_2input_reset ctrl(reset,det,~ack_in,ctrl_signal);

reg_ass_4bits reg_4bits(dados_in,ctrl_signal,dados_out);

assign ack_out=ctrl_signal;

endmodule 

