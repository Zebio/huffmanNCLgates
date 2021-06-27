module full_adder(at,af,bt,bf,cint,cinf,coutt,coutf,st,sf);
input at,af,bt,bf,cint,cinf;
output coutt,coutf,st,sf;

and c1(w1,af,bf,cinf);
and c2(w2,af,bf,cint);
and c3(w3,af,bt,cinf);
and c4(w4,af,bt,cint);
and c5(w5,at,bf,cinf);
and c6(w6,at,bf,cint);
and c7(w7,at,bt,cinf);
and c8(w8,at,bt,cint);

or hist(whist,at,af,bt,bf,cint,cinf);

and acoutt(wcoutt,whist,coutt);
and acoutf(wcoutf,whist,coutf);

and ast(wst,whist,st);
and asf(wsf,whist,sf);

or ocoutt(coutt,wcoutt,w4,w6,w7,w8);
or ocoutf(coutf,wcoutf,w1,w2,w3,w5);

or ost	(st,wst,w2,w3,w5,w8);
or osf	(sf,wsf,w1,w4,w6,w7);

endmodule 