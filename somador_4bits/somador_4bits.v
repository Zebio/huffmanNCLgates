module somador_4bits(a,b,cin,soma,cout);

input[7:0]a,b;
input[1:0]cin;

output[7:0]soma;
output[1:0]cout;

wire[1:0] w1,w2,w3;


full_adder bit0(a[1],a[0],b[1],b[0],cin[1],cin[0],w1[1],w1[0],soma[1],soma[0]);


full_adder bit1(a[3],a[2],b[3],b[2],w1[1],w1[0],w2[1],w2[0],soma[3],soma[2]);


full_adder bit2(a[5],a[4],b[5],b[4],w2[1],w2[0],w3[1],w3[0],soma[5],soma[4]);


full_adder bit3(a[7],a[6],b[7],b[6],w3[1],w3[0],cout[1],cout[0],soma[7],soma[6]);

endmodule
