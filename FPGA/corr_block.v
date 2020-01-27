module corr_block(clk, shift_in, shift_out, corr_out, shift_en, shift_cycle, shift_seq, coeff_seq, coeff_sel, coeff_index, coeff_value, coeff_write);
	input clk;
	input[8:0] shift_in;
	output wire[8:0] shift_out;
	output wire[19:0] corr_out;
	
	input shift_en;
	input[5:0] shift_cycle;
	input[5:0] shift_seq;
	input[5:0] coeff_seq;
	input[1:0] coeff_sel;
	
	input[7:0] coeff_index;
	input[35:0] coeff_value;
	input coeff_write;
	
	wire[35:0] shift_ram_in;
	wire[35:0] shift_ram_out;
	corr_ram_shift shift_ram(
		.clock(clk),
		.data(shift_ram_in),
		.rdaddress(shift_seq),
		.wraddress(shift_cycle),
		.wren(shift_en),
		.q(shift_ram_out)
	);
	assign shift_ram_in = {shift_ram_out[26:0], shift_in};
	assign shift_out = shift_ram_out[35:27];
	
	wire[35:0] coeff_ram_out;
	corr_ram_coeff coeff_ram(
		.clock(clk),
		.data(coeff_value),
		.rdaddress({coeff_sel, coeff_seq}),
		.wraddress(coeff_index),
		.wren(coeff_write),
		.q(coeff_ram_out)
	);
	
	wire[8:0] s0;
	wire[8:0] s1;
	wire[8:0] s2;
	wire[8:0] s3;
	assign s0 = shift_ram_out[8:0];
	assign s1 = shift_ram_out[17:9];
	assign s2 = shift_ram_out[26:18];
	assign s3 = shift_ram_out[35:27];
	
	wire[8:0] c0;
	wire[8:0] c1;
	wire[8:0] c2;
	wire[8:0] c3;
	assign c0 = coeff_ram_out[8:0];
	assign c1 = coeff_ram_out[17:9];
	assign c2 = coeff_ram_out[26:18];
	assign c3 = coeff_ram_out[35:27];
	
	wire[17:0] m0;
	wire[17:0] m1;
	wire[17:0] m2;
	wire[17:0] m3;
	assign m0 = c0 * s0;
	assign m1 = c1 * s1;
	assign m2 = c2 * s2;
	assign m3 = c3 * s3;
	
	assign corr_out = m0 + m1 + m2 + m3;
endmodule
