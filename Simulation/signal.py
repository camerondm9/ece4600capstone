import numpy as np
import math

def generate_chirp(samplerate, centerfreq, chirpfreq, duration):
	"Generates a chirp signal around a center frequency"
	minfreq = centerfreq - chirpfreq
	time = np.linspace(0, duration, samplerate * duration, False)
	return np.sin(2 * math.pi * (minfreq + chirpfreq / duration * time) * time)

def quantize_signal(signal, bits):
	"Rounds each sample in the signal to the specified number of bits"
	#Calculate number of usable value for the given number of bits (ignoring non-negate-able lowest value)
	multiplier = 2 ** (bits - 1) - 1
	return np.round(signal * multiplier) / multiplier

#signal = generate_chirp(1_000_000, 10_000, 5_000, 1)
#print(np.nonzero(np.diff(np.sign(signal))))
