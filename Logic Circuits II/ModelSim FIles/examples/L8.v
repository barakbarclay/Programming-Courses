// 3 bit counter from 000 to 110 that starts on an input pulse

module L8(output Q2,Q1,Q0,OUTPUT, output [2:0]State, input START,clock,reset);
reg[2:0]state; 
assign OUTPUT=Q2||Q1||Q0;
parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110; 
always @(posedge clock or negedge reset)
if(reset==0) state <=S0; 
else case (state)
S0: if(START) state=S1;
S1: if(START) state=S2;
S2: if(START) state=S3;
S3: if(START) state=S4;
S4: if(START) state=S5;
S5: if(START) state=S6;
S6: if(START) state=S0;
endcase
assign Q2=state[2];
assign Q1=state[1];
assign Q0=state[0];
assign State[2]=state[2];
assign State[1]=state[1];
assign State[0]=state[0];

endmodule
