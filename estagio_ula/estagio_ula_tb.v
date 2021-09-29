//`timescale 1 ps/10 ms;  // time-unit = 1 ns, precision = 10 ps


module estagio_ula_tb();

reg  [7:0] a,b;
reg  [1:0] opr;
reg  ack_in;

wire [7:0]soma;
wire [1:0]of,neg,zero;
wire ack_out;

reg [8:0]i;

// duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
localparam period = 1; 

estagio_ula dut(ack_in,a,b,opr,ack_out,soma,of,zero,neg);

initial 
begin

a		=8'b00000000;  //NULL
b		=8'b00000000;	//NULL
opr	=2'b00;			//NULL
ack_in=1;				//1
#10;

a=8'b01011001;
b=8'b01011010;
opr=2'b01;
ack_in=0;
#10;

a=8'b00000000;
b=8'b00000000;
opr=2'b00;
ack_in=1;
#10;

a=8'b01011001;
b=8'b01011010;
opr=2'b10;
ack_in=0;
#10;

a=8'b00000000;
b=8'b00000000;
opr=2'b00;
ack_in=1;
#10;

a=8'b01100101;
b=8'b10100101;
opr=2'b01;
ack_in=0;
#10;

a=8'b00000000;
b=8'b00000000;
opr=2'b00;
ack_in=1;
#10;

a=8'b01100110;
b=8'b01100101;
opr=2'b01;
ack_in=0;
#10;

a=8'b00000000;
b=8'b00000000;
opr=2'b00;
ack_in=1;
#10;

$stop;
end


endmodule 