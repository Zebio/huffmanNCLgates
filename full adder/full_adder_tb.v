module full_adder_tb();

reg at,af,bt,bf,cint,cinf;

wire coutt,coutf,st,sf;

full_adder dut(at,af,bt,bf,cint,cinf,coutt,coutf,st,sf);

initial 
begin
at = 0;
af = 0;
bt = 0;
bf = 0;
cint = 0;
cinf = 0;

#10;
at = 0;
af = 1;
bt = 1;
bf = 0;
cint = 0;
cinf = 1;
#10;

end
endmodule 