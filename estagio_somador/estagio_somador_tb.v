module estagio_somador_tb();

reg 	ack_in;
reg [7:0] a,b;
reg [1:0]	cin;

wire		ack_out;
wire[7:0] soma_saida;

estagio_somador dut(ack_in,a,b,cin,ack_out,soma_saida);

initial 
begin
	ack_in =1;
	a=8'b00000000;
	b=8'b00000000;
	cin=2'b00;
	#10;
	
	ack_in =0;
	a=8'b01010101;
	b=8'b01010110;
	cin=2'b01;
	#10;
	
	ack_in =1;
	#10;
	
end

endmodule 