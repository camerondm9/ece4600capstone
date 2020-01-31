import crcmod

crc16 = crcmod.mkCrcFun(0x1A2EB)
print(f"0x{format(crc16(bytes()), '04X')}")
print(f"0x{format(crc16(bytes([0])), '04X')}")

crc8 = crcmod.mkCrcFun(0x1D7)
print(f"0x{format(crc8(bytes()), '02X')}")
print(f"0x{format(crc8(bytes([0xFF])), '02X')}")

with open('./crc.c', 'w') as c_file:
	crcmod.Crc(0x1A2EB).generateCode('crc16', c_file, 'uint8_t', 'uint16_t')
	crcmod.Crc(0x1D7).generateCode('crc8', c_file, 'uint8_t', 'uint8_t')
