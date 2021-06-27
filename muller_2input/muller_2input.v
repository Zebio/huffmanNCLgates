module muller_2input(a,b,z);

input a,b;

output z;


wire w1,w2,w3;

and a1(w1,a,b);
and a2(w2,a,z);
and a3(w3,z,b);
or  a4(z,w1,w2,w3);

endmodule 