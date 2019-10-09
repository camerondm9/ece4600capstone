import numpy as np
import math

def make_silence(duration, sample_rate = 1):
	"Generates a sequence of zeros"
	return np.zeros(round(duration * sample_rate))

def make_chirp(center_freq, chirp_freq, duration, sample_rate):
	"Generates a chirp signal around a center frequency"
	min_freq = center_freq - chirp_freq
	time = np.linspace(0, duration, round(duration * sample_rate), False)
	return np.sin(2 * math.pi * (min_freq + chirp_freq / duration * time) * time)

def quantize(signal, bits):
	"Rounds each sample in the signal to the specified number of bits"
	#Calculate number of usable values for the given number of bits (ignoring non-negate-able lowest value)
	multiplier = 2 ** (bits - 1) - 1
	return np.round(signal * multiplier) / multiplier

def add_noise(signal, signal_to_noise_ratio):
	"Returns signal with noise, assumes signal level is -1 to 1"
	noise = np.random.normal(size=len(signal)) / signal_to_noise_ratio
	return signal + noise

def correlate(signal_a, signal_b):
	"Returns the correlation signal of two input signals"
	return np.correlate(signal_a, signal_b, mode='valid')

def peak_index(signal, threshold, sample_rate = 1):
	"Computes the weighted average location of the peak amplitude in the signal"
	mask = signal * (signal > threshold)
	total = np.sum(mask)
	count = np.count_nonzero(mask)
	#Returns (peak_index, peak_sample_count, peak_value_average, peak_value_max)
	return (np.sum(np.arange(0, len(signal)) * mask) / (total * sample_rate), count, total / count, np.max(mask))
