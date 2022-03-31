module TopLab7(Clk,Reset,Rd,Rs1,Rs2,imm);

input Clk;
input Reset;
output [4:0] Rd;
output [4:0] Rs1;
output [4:0] Rs2;
output [11:0] imm;
wire [31:0] Is;
wire [7:0] PCi;
wire [7:0] PCo;


Program_Counter Program_Counter_1(.clk(Clk), .reset(Reset), .PCi(PCo), .PCo(PCi));

adder4 adder4_1(.clk(Clk), .reset(Reset), .PCi(PCi), .PCo(PCo));

ROM ROM1(.out(Is), .clock(Clk), .address(PCi));

instructionDecoder instDecode1(.InnD(Is),.Rd(Rd),.Rs1(Rs1),.Rs2(Rs2),.imm(imm));




endmodule
