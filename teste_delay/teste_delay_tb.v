module teste_delay_tb();

reg a,b;

wire s;

teste_delay dut(a,b,s);

initial
begin
	a=0;
	b=0;
	
	#20;
	a=1;
	
	#20;
	b=1;
	
	#20;
	b=0;
	a=0;
	
	#20;
	$stop;

end 
endmodule 