module teste_delay(a, b, s);

input a,b;

output s;



assign #10 s = a & b;

endmodule 
