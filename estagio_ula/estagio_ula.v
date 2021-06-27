module estagio_ula(ack_out);

wire ack_in;
wire [7:0]a,b;
wire [1:0]opr;

output ack_out;
wire[7:0]soma;
wire[1:0]of,zero,neg;

wire [7:0]Wsoma;
wire [1:0]Wof,Wzero,Wneg;
wire muller_post,ctrl;

ula_4bits ula(a,b,opr,Wsoma,Wof,Wzero,Wneg);

or (det,Wof[1],Wof[0]);

assign ack_out=ctrl;

not (muller_post,ack_in);

muller_2input muller(det,muller_post,ctrl);

reg_ass bit0(Wsoma[1],Wsoma[0],ctrl,soma[1],soma[0]);
reg_ass bit1(Wsoma[3],Wsoma[2],ctrl,soma[3],soma[2]);
reg_ass bit2(Wsoma[5],Wsoma[4],ctrl,soma[5],soma[4]);
reg_ass bit3(Wsoma[7],Wsoma[6],ctrl,soma[7],soma[6]);

reg_ass z(Wzero[1],Wzero[0],ctrl,zero[1],zero[0]);
reg_ass n(Wneg[1] ,Wneg[0] ,ctrl,neg[1] ,neg[0]);
reg_ass o(Wof[1],Wof[0],ctrl,of[1],of[0]);

endmodule 
