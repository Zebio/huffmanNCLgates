module det_4bits(dados,det);

input[7:0] dados;

wire w_det;

output det;

wire w1,w2,w3,w4;

or(w1,dados[7],dados[6]);
or(w2,dados[5],dados[4]);
or(w3,dados[3],dados[2]);
or(w4,dados[1],dados[0]);

and And(w_det,w1,w2,w3,w4);

assign #5 det = w_det;

endmodule 