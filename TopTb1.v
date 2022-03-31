module TopTb1();

reg Clk;
reg Reset;
wire [4:0]Rd;
wire [4:0]Rs1;
wire [4:0]Rs2;
wire [11:0]imm;


TopLab7 TopLab7_1(.Clk(Clk),.Reset(Reset),.Rd(Rd),.Rs1(Rs1),.Rs2(Rs2),.imm(imm));


always begin
#25 Clk = ~Clk;
end

initial begin

	Clk <= 0;
	Reset <= 1;
	#100
	Reset <=0;
	#3000




$finish;
end






endmodule

