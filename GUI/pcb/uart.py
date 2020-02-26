import crcmod

crc16 = crcmod.mkCrcFun(0x1A2EB)
print(f"0x{format(crc16(bytes()), '04X')}")
print(f"0x{format(crc16(bytes([0])), '04X')}")

crc8 = crcmod.mkCrcFun(0x1D7)
print(f"0x{format(crc8(bytes()), '02X')}")
print(f"0x{format(crc8(bytes([0xFF])), '02X')}")

# TODO: Finish C code for packet reception
# TODO: Translate to Python
