module muller_2input_tb();

reg a,b;

wire z;

muller_2input dut(a,b,z);

initial 
begin
a=0;
b=0;
#10;

a=0;
b=1;
#10;

a=1;
b=1;
#10;

a=1;
b=0;
#10;

a=0;
b=0;
#10;

end
endmodule 
