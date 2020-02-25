# UART Protocol
## _for communicating between microcontroller and computer_

Protocol is packet-based. Packets are formed like this:
- sync markers:
	- byte-boundary sync (1 byte, for UART hardware)
	- packet-boundary sync (1 byte, for software to identify packet start)
- header:
	- length field (1 byte, length of variable payload)
	- length CRC (8-bit)
- payload:
	- fixed portion (3 bytes, contains control code)
	- variable portion (0-255 bytes)
	- payload CRC (16-bit)

Padding can be used between packets. Use the byte-boundary sync value (0xFF).

## Markers
Some bytes are used are markers, to increase protocol resilience:

| Code(s)  | Description                                                                                  |
|----------|----------------------------------------------------------------------------------------------|
| 0xFF     | Byte-bounary sync marker. Used as padding. Helps UART receiver hardware sync to transmitter. |
| 0xCA     | Packet-boundary sync marker. Can be used to recover start of packet.                         |

A single bit-flip in the packet-boundary marker can be corrected. Multiple flipped bits will cause the packet to be lost.

## CRCs
Standard CRC computations, using best polynomials, selected from Koopman's tables:

| CRC field   | Size    | Polynomial | What it protects                       |
|-------------|---------|------------|----------------------------------------|
| Length CRC  | 8 bits  | 0x1D7      | Only the length field                  |
| Payload CRC | 16 bits | 0x1A2EB    | All payload bytes (fixed and variable) |

The length CRC is used with a basic error-correction algorithm. A single bit-flip can be corrected, and up to 3 bit-flips detected.
The payload CRC has no error correction capabilities. It can detect up to 3 bit-flips.

Corrupt packets will be discarded.

## Payload data
Payload data contains a control code, stored at the start of the fixed payload portion.
The remainder of the payload will depend on the control code.
