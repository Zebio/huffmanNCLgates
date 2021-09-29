module reg_ass(et,ef,hab,st,sf);

input et,ef,hab;

output st,sf;

wire or_true,or_false;

or (or_true,st,et);
and (st,hab,or_true);

or(or_false,sf,ef);
and(sf,hab,or_false);



endmodule
