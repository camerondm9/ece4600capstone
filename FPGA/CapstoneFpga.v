module CapstoneFpga(spi_flash_cs, spi_clk, spi_din, spi_dout_tri, link0, link1, link2, link3, link4, link5, clk12, adc_cs, adc_clk, adc_sdo, transmit_enable, dac_cs, dac_clk, dac_sdi, vga_cs0, vga_cs1, vga_clk, vga_d0, vga_d1, int_osc);
	input spi_flash_cs;
	input spi_clk;
	input spi_din;
	inout wire spi_dout_tri;
	wire spi_dout;
	assign spi_dout_tri = spi_flash_cs ? spi_dout : 'bZ;
	
	input link0;
	input link1;
	input link2;
	input link3;
	input link4;
	input link5;
	
	input clk12;
	wire clk48;
	wire clk192;
	wire reset;
	wire pll_locked;
	
	output reg adc_cs;
	output wire adc_clk;
	input adc_sdo;
	
	output reg transmit_enable;
	output reg dac_cs;
	output wire dac_clk;
	output reg dac_sdi;
	
	output reg vga_cs0;
	output reg vga_cs1;
	output wire vga_clk;
	output reg vga_d0;
	output reg vga_d1;
	
	output wire int_osc;

	//PLL to generate faster clocks
	pll12_192_48 pll0(
		.areset(0),
		.inclk0(clk12),
		.c0(clk192),
		.c1(clk48),
		.locked(pll_locked)
	);
	
	//Hold logic in reset until PLL is locked
	reset_controller reset0(clk48, reset_req, pll_locked, reset);
	
	//TODO: Clock passthrough (this might change, depending on if we need the clocks to be synced to something)
	assign adc_clk = clk48;
	assign dac_clk = clk48;
	assign vga_clk = clk48;
	
	//Correllator...
	wire[8:0] shift_out_discard;
	corr_full corr0(reset, clk192, 0, shift_out_discard, 0, 0, 0, 0);
	
	
	
	//Test code
	internal_osc osc0(int_osc, 1);

	reg[2:0] test_counter;
	
	always @(posedge int_osc)
	begin
		dac_sdi <= test_counter[0];
		vga_d0 <= test_counter[1];
		vga_d1 <= test_counter[2];
		test_counter <= test_counter + 1;
	end
	
endmodule
