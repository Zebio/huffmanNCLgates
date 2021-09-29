module estagio_source_zero(reset,ack_in,dados_out);

input reset;
input ack_in;
output[7:0] dados_out;

wire ctrl_signal;

reg_ass_4bits reg_4bits(8'b01010101,~ack_in&reset,dados_out);

endmodule 