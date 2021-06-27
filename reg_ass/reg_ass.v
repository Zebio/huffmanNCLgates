module reg_ass(et,ef,hab,st,sf);

input et,ef,hab;

output st,sf;

wire w1,w2,nothab;

not (nothab,hab);

nor (w1,st,nothab,et);
nor (st,w1,nothab);

nor (w2,sf,nothab,ef);
nor (sf,w2,nothab);

endmodule
