#include <stdint.h>

uint16_t crc16(uint8_t *data, int len, uint16_t crc);
uint8_t crc8_single(uint8_t data, uint8_t crc);
uint8_t* detect_packet(uint8_t* buffer, int buffer_count);
