module zero_detector (af,at,bf,bt,cf,ct,df,dt,zf,zt);

input af,at,bf,bt,cf,ct,df,dt;
output zf,zt;

and c1(w1,af,bf,cf,df);
or  c2(w2,at,bt,ct,dt);

or hist(whist,af,at,bf,bt,cf,ct,df,dt);

and azt(w3,whist,zt);
and azf(w4,whist,zf);


or ozt(zt,w3,w1);
or ozf(zf,w4,w2);

endmodule
