module somador_4bits_tb();

reg[7:0]a,b;
reg[1:0]cin;

wire[7:0]soma;
wire[1:0]cout;

somador_4bits dut(a,b,cin,soma,cout);

initial
begin
a=8'b00000000;
b=8'b00000000;
cin=2'b00;
#10;


a=8'b01010101;
b=8'b01010110;
cin=2'b01;

#10;




end
endmodule 

