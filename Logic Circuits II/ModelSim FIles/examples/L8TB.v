// 3 bit counter from 000 to 110 that starts on an input pulse test bench

module L8TB;
  wire Q2,Q1,Q0,OUTPUT;
  wire [2:0]State;
  reg START,clock,reset;

L8 M1(Q2,Q1,Q0,OUTPUT,State,START,clock,reset);
  
  initial
  begin
    $monitor ("Q2Q1Q0=%b%b%b   OUTPUT=%b", Q2,Q1,Q0,OUTPUT);
    START = 1'b0;clock = 1'b0;reset = 1'b0;
    #5 START = 1'b0;clock = 1'b0;reset = 1'b1;
    #5 START = 1'b0;clock = 1'b1;reset = 1'b1;
    #10 START = 1'b0;clock = 1'b0;reset = 1'b1;
    forever begin
    #10 START = 1'b1;clock = 1'b1;reset = 1'b1;
    #10 START = 1'b1;clock = 1'b0;reset = 1'b1;
    end
  end
  
  initial #200 $stop;
  
endmodule