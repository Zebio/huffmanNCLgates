module reg_ass_4bits(dados_in,hab,dados_out);

input[7:0] dados_in;
input hab;

output[7:0]dados_out;

reg_ass bit3(dados_in[7],dados_in[6],hab,dados_out[7],dados_out[6]);
reg_ass bit2(dados_in[5],dados_in[4],hab,dados_out[5],dados_out[4]);
reg_ass bit1(dados_in[3],dados_in[2],hab,dados_out[3],dados_out[2]);
reg_ass bit0(dados_in[1],dados_in[0],hab,dados_out[1],dados_out[0]);

endmodule 
