module xor_gate(at,af,bt,bf,zt,zf);

input at,af,bt,bf;
output zt,zf;

and a1(w1,at,bf);
and a2(w2,af,bt);
and a3(w3,w4,zt);
or  o4(w4,at,af,bt,bf);
or  o5(zt,w1,w2,w3);


and a6(w5,at,bt);
and a7(w6,af,bf);
and a8(w7,w4,zf);
or  o9(zf,w5,w6,w7);

endmodule 
