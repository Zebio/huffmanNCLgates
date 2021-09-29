module estagio_somador(reset,ack_in,a,b,cin,ack_out,soma_saida);

input 		reset;
input 		ack_in;
input [7:0] a,b;
input [1:0]	cin;
output 		ack_out;
output[7:0] soma_saida;

wire [1:0]cout;
wire det,ctrl_signal;
wire[7:0] soma;

somador_4bits somador_4bits(a,b,cin,soma,cout);

det_4bits detector(soma,det);

muller_2input_reset ctrl(reset,det,~ack_in,ctrl_signal);

reg_ass_4bits reg_4bits(soma,ctrl_signal,soma_saida);

assign ack_out=ctrl_signal;

endmodule 