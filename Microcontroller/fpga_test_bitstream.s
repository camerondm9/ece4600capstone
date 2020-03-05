	.section .rodata
	.global fpga_test_bitstream
	.type fpga_test_bitstream, STT_OBJECT
	.align 4
fpga_test_bitstream:
	.incbin "../FPGA/output/CapstoneFpga.rbf"
	.byte 0
fpga_test_bitstream_end:
	.global fpga_test_bitstream_size
	.type fpga_test_bitstream_size, STT_OBJECT
	.align 4
fpga_test_bitstream_size:
	.int (fpga_test_bitstream_end - fpga_test_bitstream)
