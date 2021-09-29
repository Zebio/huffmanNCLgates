module reg_ass_4bits_tb();

reg[7:0] dados_in;
reg hab;

wire[7:0]dados_out;

reg_ass_4bits dut(dados_in,hab,dados_out);

initial
begin
dados_in=8'b00000000;
hab=0;
#10;

dados_in=8'b01010110;
hab=0;
#10
hab=1;

#10;



end
endmodule 