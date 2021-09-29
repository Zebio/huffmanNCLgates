module reg_ass_tb();

reg et,ef,hab;

wire st,sf;

reg_ass dut(et,ef,hab,st,sf);

initial 
begin
et=0;
ef=0;
hab=0;
#10;

ef=1;
#10;


hab=1;
#10;


ef=0;
#10;


hab=0;
#10;

et=1;
#10;


hab=1;
#10;


et=0;
#10;


hab=0;
#10;

end

endmodule 