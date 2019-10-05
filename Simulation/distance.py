import numpy as np
import matplotlib
matplotlib.use('svg') #Make pyplot happy
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
chirp_freq		= 40*K
pulse_time		= 300*u

delay_time		= 40*m
signal_to_noise	= 1
corr_threshold	= 180

speed_of_sound	= 343

simulate_runs	= 1

#Make everything into iterables
sample_rate_s = sim.util.ensure_iterable(sample_rate)
sample_bits_s = sim.util.ensure_iterable(sample_bits)
center_freq_s = sim.util.ensure_iterable(center_freq)
chirp_freq_s = sim.util.ensure_iterable(chirp_freq)
pulse_time_s = sim.util.ensure_iterable(pulse_time)
delay_time_s = sim.util.ensure_iterable(delay_time)
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
				pulse_samples = round(pulse_time * sample_rate)
				reference_signal = sim.signal.make_chirp(center_freq, chirp_freq, pulse_time, sample_rate)
				for sample_bits in sample_bits_s:
					#Quantize reference signal (for correlation)
					reference_signal_quantized = sim.signal.quantize(reference_signal, sample_bits)
					for delay_time in delay_time_s:
						#Make delayed signal (simulating transmission and travel through air)
						delay_samples = round(delay_time * sample_rate)
						delayed_signal = np.concatenate((sim.signal.make_silence(delay_samples), reference_signal, sim.signal.make_silence(pulse_time, sample_rate)))
						for speed_of_sound in speed_of_sound_s:
							for signal_to_noise in signal_to_noise_s:
								for _ in range(simulate_runs):
									#Add simulated noise from environment
									noisy_signal = sim.signal.quantize(sim.signal.add_noise(delayed_signal, signal_to_noise), sample_bits)
									for corr_threshold in corr_threshold_s:
										correlation = sim.signal.correlate(noisy_signal, reference_signal)
										peak, peak_samples, peak_avg, peak_max = sim.signal.peak_index(correlation, corr_threshold, sample_rate)
										fig = plt.figure(figsize=(64, 48))
										plt.margins(0.002)
										plt.plot(correlation, 'm', linewidth=0.3)
										plt.plot(noisy_signal, 'y', linewidth=0.3)
										plt.plot(reference_signal_quantized, 'b', linewidth=0.3)
										plt.axvline(pulse_samples, color='b', linewidth=0.3)
										plt.axvline(delay_samples, color='y', linewidth=0.3)
										plt.axvline(delay_samples + pulse_samples, color='y', linewidth=0.3)
										plt.axvline(peak * sample_rate, color='m', linewidth=0.3)
										plt.axhline(corr_threshold, color='m', linewidth=0.3)
										plt.savefig('test.svg', dpi=500, bbox_inches='tight')
										plt.close(fig)
										params = (
											sample_rate,
											sample_bits,
											center_freq,
											chirp_freq,
											pulse_time,
											delay_time,
											signal_to_noise,
											corr_threshold,
											speed_of_sound,
											simulate_runs,
										)
										r = (
											peak,
											peak_samples,
											peak_avg,
											peak_max,
										)
										if params in result:
											result[params].append(r)
										else:
											result[params] = [r]
print(result)
