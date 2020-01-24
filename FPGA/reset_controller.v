module reset_controller(clk, req, pll_lock, reset_logic);
	//Holds logic in reset until PLL is locked (at power-up).
	//Can be used to reset the logic at any time using the req input.
	
	input clk;
	input req;
	input pll_lock;
	output wire reset_logic;
	
	reg[3:0] lock = 0;
	reg[1:0] state = 3;
	
	always @(posedge clk)
	begin
		lock <= {lock[2:0], pll_lock};
		if (req | (lock[3:1] != 'b111)) begin
			state <= 3;
		end else begin
			state <= {state[0], 1'b0};
		end
	end
	
	assign reset_logic = state[1];
endmodule
