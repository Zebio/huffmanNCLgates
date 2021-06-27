module compl_2 (a,opr,res);

input[7:0] a;
input[1:0] opr;

output [7:0]res;




xor_gate bit0(a[1],a[0],opr[1],opr[0],res[1],res[0]);

xor_gate bit1(a[3],a[2],opr[1],opr[0],res[3],res[2]);

xor_gate bit2(a[5],a[4],opr[1],opr[0],res[5],res[4]);

xor_gate bit3(a[7],a[6],opr[1],opr[0],res[7],res[6]);

endmodule 
