module estagio_ula(ack_in,a,b,opr,ack_out,soma,of,zero,neg);

input ack_in;
input [7:0]a,b;
input [1:0]opr;

output ack_out;
output[7:0]soma;
output[1:0]of,zero,neg;

wire [7:0]Wsoma;
wire [1:0]Wof,Wzero,Wneg;
wire muller_post,ctrl;

ula_4bits ula(a,b,opr,Wsoma,Wof,Wzero,Wneg);

or (det,Wof[1],Wof[0]);

assign ack_out=ctrl;

not (muller_post,ack_in);

muller_2input muller(det,muller_post,ctrl);

reg_ass_4bits s(Wsoma,ctrl,soma);

reg_ass z(Wzero[1],Wzero[0],ctrl,zero[1],zero[0]);
reg_ass n(Wneg[1] ,Wneg[0] ,ctrl,neg[1] ,neg[0]);
reg_ass o(Wof[1],Wof[0],ctrl,of[1],of[0]);

endmodule 
