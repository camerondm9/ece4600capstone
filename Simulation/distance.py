import numpy as np
import matplotlib
matplotlib.use('agg') #Make pyplot happy
import matplotlib.pyplot as plt
import sim

#SI prefixes
G	= 1000_000_000
M	= 1000_000
K	= 1000
m	= 0.001
u	= 0.000_001
n	= 0.000_000_001

#Simulation parameters
sample_rate		= 4*M
sample_bits		= 8
center_freq		= 400*K
chirp_freq		= 0
pulse_time		= 300*u

signal_delay	= 100*u
signal_to_noise	= 0.1
corr_threshold	= 0.5

speed_of_sound	= 343

simulate_runs	= 1

#Make everything into iterables
sample_rate_s = sim.util.ensure_iterable(sample_rate)
sample_bits_s = sim.util.ensure_iterable(sample_bits)
center_freq_s = sim.util.ensure_iterable(center_freq)
chirp_freq_s = sim.util.ensure_iterable(chirp_freq)
pulse_time_s = sim.util.ensure_iterable(pulse_time)
signal_delay_s = sim.util.ensure_iterable(signal_delay)
signal_to_noise_s = sim.util.ensure_iterable(signal_to_noise)
corr_threshold_s = sim.util.ensure_iterable(corr_threshold)
speed_of_sound_s = sim.util.ensure_iterable(speed_of_sound)

#Store results
result = dict()

#Run simulations
for sample_rate in sample_rate_s:
	for center_freq in center_freq_s:
		for chirp_freq in chirp_freq_s:
			for pulse_time in pulse_time_s:
				#Generate reference signal (for transmission)
				reference_signal = sim.signal.make_chirp(sample_rate, center_freq, chirp_freq, pulse_time)
				for sample_bits in sample_bits_s:
					#Quantize reference signal (for correlation)
					reference_signal_quantized = sim.signal.quantize(reference_signal, sample_bits)
					for signal_delay in signal_delay_s:
						#Make delayed signal (simulating transmission and travel through air)
						delayed_signal = np.concatenate((sim.signal.make_silence(sample_rate, signal_delay), reference_signal, sim.signal.make_silence(sample_rate, pulse_time)))
						for speed_of_sound in speed_of_sound_s:
							for signal_to_noise in signal_to_noise_s:
								for _ in range(simulate_runs):
									#Add simulated noise from environment
									noisy_signal = sim.signal.quantize(sim.signal.add_noise(delayed_signal, signal_to_noise), sample_bits)
									for corr_threshold in corr_threshold_s:
										correlation = sim.signal.correlate(reference_signal, noisy_signal)
										r = sim.signal.peak_index(correlation, corr_threshold, sample_rate)
										fig = plt.figure()
										plt.plot(np.concatenate((np.zeros(len(reference_signal)), correlation)))
										plt.plot(noisy_signal)
										plt.plot(reference_signal_quantized)
										#TODO: Improve plot quality/usefulness
										plt.savefig('test.png')
										plt.close(fig)
										params = (
											sample_rate,
											sample_bits,
											center_freq,
											chirp_freq,
											pulse_time,
											signal_delay,
											signal_to_noise,
											corr_threshold,
											speed_of_sound,
											simulate_runs,
										)
										if params in result:
											result[params].append(r)
										else:
											result[params] = [r]
print(result)
