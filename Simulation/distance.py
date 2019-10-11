import numpy as np
import matplotlib
matplotlib.use('svg') #Make pyplot happy
import matplotlib.pyplot as plt
import os
import shutil
import sim

#SI prefixes
G	= 1000_000_000
M	= 1000_000
K	= 1000
m	= 0.001
u	= 0.000_001
n	= 0.000_000_001

#Simulation parameters
sample_rate		= 10
sample_bits		= 8
center_freq		= [40*K, 100*K, 200*K, 300*K, 400*K]
chirp_freq		= 0.1
pulse_time		= 300*u

delay_time		= 4*m
signal_to_noise	= 1
corr_threshold	= 0.5

speed_of_sound	= 343

simulate_runs	= 100
save_plots		= (simulate_runs < 5)

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

#Erase previous results
if os.path.isdir('./out'):
	shutil.rmtree('./out')
os.mkdir('./out')

#Store results
result = dict()

#Run simulations
for center_freq in center_freq_s:
	for sample_rate in sample_rate_s:
		#Support for sample rate depending on center frequency
		if sample_rate <= 100:
			sample_rate *= center_freq
		for chirp_freq in chirp_freq_s:
			#Support for chirp depending on center frequency
			if chirp_freq <= 2:
				chirp_freq *= center_freq
			for pulse_time in pulse_time_s:
				#Generate reference signal (for transmission)
				pulse_samples = round(pulse_time * sample_rate)
				reference_signal = sim.signal.make_chirp(center_freq, chirp_freq, pulse_time, sample_rate)
				max_peak = sim.signal.correlate(reference_signal, reference_signal)[0]
				for sample_bits in sample_bits_s:
					#Quantize reference signal (for correlation)
					reference_signal_quantized = sim.signal.quantize(reference_signal, sample_bits)
					for delay_time in delay_time_s:
						#Make delayed signal (simulating transmission and travel through air)
						delay_samples = round(delay_time * sample_rate)
						delayed_signal = np.concatenate((sim.signal.make_silence(delay_samples), reference_signal, sim.signal.make_silence(pulse_time, sample_rate)))
						for speed_of_sound in speed_of_sound_s:
							for signal_to_noise in signal_to_noise_s:
								for run_number in range(simulate_runs):
									#Add simulated noise from environment
									noisy_signal = sim.signal.quantize(sim.signal.add_noise(delayed_signal, signal_to_noise), sample_bits)
									for corr_threshold in corr_threshold_s:
										#Support for threshold depending on maximum
										if corr_threshold <= 1:
											corr_threshold *= max_peak
										correlation = sim.signal.correlate(noisy_signal, reference_signal)
										peak, peak_samples, peak_avg, peak_max = sim.signal.peak_index(correlation, corr_threshold, sample_rate)
										error_time = delay_time - peak
										error_position = abs(error_time * speed_of_sound)
										#Package information
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
										)
										name = f"{sample_rate}Hz_{sample_bits}b_{center_freq}Hz_{chirp_freq}Hz_{pulse_time}s_{delay_time}s_{signal_to_noise}SNR_{corr_threshold}_{speed_of_sound}m+s_{run_number}"
										r = (
											peak,
											peak_samples,
											peak_avg,
											peak_max,
											error_time,
											error_position,
											name,
										)
										#Save plots (if needed)
										if save_plots:
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
											plt.savefig('./out/' + name + '.svg', dpi=500, bbox_inches='tight')
											plt.close(fig)
										#Add to results for generating statistics
										if params in result:
											result[params].append(r)
										else:
											result[params] = [r]
#print(result)
print("Stats: (params) = [peak, peak_samples, peak_value_average, peak_value_max, error_time]")
for params, r_s in result.items():
	if len(r_s) < 2:
		stats = list(r_s[0][0:6])
	else:
		stats = [sim.util.stats([r[i] for r in r_s]) for i in range(6)]
	print(params, '=', stats)

#TODO: Use si_units() to print numbers in more readable form
#TODO: Maybe add CSV file export so we can pull the data into Excel? (will be difficult once it's been prettified with units...)
