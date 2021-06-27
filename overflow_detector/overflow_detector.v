module overflow_detector(af,at,bf,bt,sf,st,of,ot);

input af,at,bf,bt,sf,st;

output of,ot;

and c1(w1,af,bf,st);
and c6(w6,at,bt,sf);

or o1(w3,bt,sf);
or o2(w4,bf,st);

and off1(w7,af,w3);
and off2(w8,at,w4);

or hist(whist,af,at,bf,bt,sf,st);

and andof(w10,whist,of);
and andot(w11,whist,ot);

or finof(of,w7,w8,w10);
or finot(ot,w1,w6,w11);

endmodule 
