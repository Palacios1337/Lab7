module Program_Counter(clk, reset, PCi, PCo);

input clk, reset;
input [7:0]PCi;

output reg [7:0]PCo;


always @ (posedge clk) begin

	if (reset == 1'b1)
	PCo = 8'b0;
   else
	PCo = PCi;

end

endmodule
