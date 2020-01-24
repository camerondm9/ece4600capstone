module corr_full(reset, clk, shift_in, shift_out, coeff_sel, coeff_index, coeff_value, coeff_write);
	input reset;
	input clk;
	input[8:0] shift_in;
	output wire[8:0] shift_out;
	
	input[1:0] coeff_sel;
	
	input[7:0] coeff_index;
	input[8:0] coeff_value;
	input coeff_write;
	
	reg[11:0] seq;
	
	wire[5:0] shift_cycle;
	wire[5:0] coeff_seq;
	wire[5:0] shift_seq;
	wire shift_en;
	assign shift_cycle = seq[11:6];
	assign coeff_seq = seq[5:0];
	assign shift_seq = shift_cycle + coeff_seq;
	assign shift_en = (coeff_seq == 2);
	
	wire[8:0] i1;
	corr_block b0(clk, shift_in, i1, shift_en, shift_cycle, shift_seq, coeff_seq, coeff_sel, coeff_index, coeff_value, coeff_write);
	wire[8:0] i2;
	corr_block b1(clk, i1, i2, shift_en, shift_cycle, shift_seq, coeff_seq, coeff_sel, coeff_index, coeff_value, coeff_write);
	corr_block b2(clk, i2, shift_out, shift_en, shift_cycle, shift_seq, coeff_seq, coeff_sel, coeff_index, coeff_value, coeff_write);
	
	always @(posedge clk)
	begin
		if (reset) begin
			
		end else begin
			seq <= seq + 1;
		end
	end
endmodule
