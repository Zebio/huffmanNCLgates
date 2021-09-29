module muller_2input_reset(reset,a,b,z);

input reset,a,b;

output z;


wire w1,w2,w3,z_wire;

and a1(w1,a,b);
and a2(w2,a,z);
and a3(w3,z,b);
or  a4(z_wire,w1,w2,w3);
and a5(z,z_wire,reset);

endmodule 