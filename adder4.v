module adder4(clk, reset, PCi, PCo);

input clk;
input reset;
input [7:0]PCi;
output reg [7:0]PCo;

 

always @ (posedge clk) begin

	if (reset == 1'b1)
		PCo = 8'b0;
	else
		PCo = PCi + 8'b00000100;
end


endmodule