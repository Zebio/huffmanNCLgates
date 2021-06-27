module ula_4bits(a,b,opr,soma,of,zero,neg);

input[7:0]a,b;
input[1:0]opr;

output[7:0]soma;
output[1:0]of,zero,neg;

wire[7:0] comp2;


compl_2 complemento_de_2(b,opr,comp2);

somador_4bits somador(a,comp2,opr,soma,);

overflow_detector of_detector(a[6],a[7],comp2[6],comp2[7],soma[6],soma[7],of[0],of[1]);

zero_detector zer_detector(soma[0],soma[1],soma[2],soma[3],soma[4],soma[5],soma[6],soma[7],zero[0],zero[1]);

assign neg[1]=soma[7];

assign neg[0]=soma[6];

endmodule


