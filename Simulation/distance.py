import numpy as np
import matplotlib
matplotlib.use('svg') #Make pyplot happy
import matplotlib.pyplot as plt
import pathos.multiprocessing as mp
import os
import csv
import math
import sim
import time

#SI prefixes
G	= 1000_000_000
M	= 1000_000
K	= 1000
m	= 0.001
u	= 0.000_001
n	= 0.000_000_001

#Simulation parameter variations
sample_rate		= 3*M
sample_bits		= 8
center_freq		= 300*K
chirp_freq		= 0.07
pulse_time		= 300*u

delay_time		= 2*m
gain			= [0.5, 0.8, 1]
signal_to_noise	= [0.2, 0.4, 1, 2.5, 5]
corr_threshold	= [0.4, 0.5, 0.6, 0.7, 0.8]

speed_of_sound	= 343

#Simulation controls
simulate_runs	= 1000
save_plots		= (simulate_runs < 5)
save_csv		= True
max_error_time	= 5*u
multicore		= True

#Make everything into iterables
sample_rate_s = sim.util.ensure_iterable(sample_rate)
sample_bits_s = sim.util.ensure_iterable(sample_bits)
center_freq_s = sim.util.ensure_iterable(center_freq)
chirp_freq_s = sim.util.ensure_iterable(chirp_freq)
pulse_time_s = sim.util.ensure_iterable(pulse_time)
delay_time_s = sim.util.ensure_iterable(delay_time)
gain_s = sim.util.ensure_iterable(gain)
signal_to_noise_s = sim.util.ensure_iterable(signal_to_noise)
corr_threshold_s = sim.util.ensure_iterable(corr_threshold)
speed_of_sound_s = sim.util.ensure_iterable(speed_of_sound)

if __name__ == '__main__':
	#Time duration
	start_up = time.perf_counter()

	#Erase previous results
	try:
		if os.path.isdir('./out'):
			for root, dirs, files in os.walk('./out', topdown=False):
				for name in files:
					os.remove(os.path.join(root, name))
				for name in dirs:
					os.rmdir(os.path.join(root, name))
		else:
			os.mkdir('./out')
	except:
		print('Unable to clean up existing output files! Close your programs before running more simulations!')
		exit()

	#Print what we're doing
	print('Running each simulation', simulate_runs, 'times.', save_plots and 'Saving plots.' or 'No plots.', save_csv and 'Saving CSV.' or 'No CSV.')

	#Store results
	result = dict()

	#Run simulations
	total_runs = len(sample_rate_s) * len(sample_bits_s) * len(center_freq_s) * len(chirp_freq_s) * len(pulse_time_s) * len(delay_time_s) * len(gain_s) * len(signal_to_noise_s) * len(corr_threshold_s) * len(speed_of_sound_s) * simulate_runs
	done_runs = 0
	progress_step = max(math.floor(total_runs / 1000), 1)
	if save_plots:
		progress_step = 1
	print(f"\r{done_runs} / {total_runs} ", end='')
	mapper = multicore and mp.Pool().map or map
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
					for sample_bits in sample_bits_s:
						#Quantize reference signal (for correlation)
						reference_signal_quantized = sim.signal.quantize(reference_signal, sample_bits)
						max_peak = sim.signal.correlate(reference_signal_quantized, reference_signal_quantized)[0]
						for delay_time in delay_time_s:
							#Make delayed signal (simulating transmission and travel through air)
							delay_samples = round(delay_time * sample_rate)
							delayed_signal = np.concatenate((sim.signal.make_silence(delay_samples), reference_signal, sim.signal.make_silence(pulse_time, sample_rate)))
							for gain in gain_s:
								attenuated_signal = delayed_signal * gain
								for speed_of_sound in speed_of_sound_s:
									for signal_to_noise in signal_to_noise_s:
										def run_worker(run_number,
												sim=sim,
												plt=plt,
												save_plots=save_plots,
												attenuated_signal=attenuated_signal,
												reference_signal_quantized=reference_signal_quantized,
												max_peak=max_peak,
												sample_rate=sample_rate,
												sample_bits=sample_bits,
												center_freq=center_freq,
												chirp_freq=chirp_freq,
												pulse_time=pulse_time,
												delay_time=delay_time,
												gain=gain,
												signal_to_noise=signal_to_noise,
												corr_threshold_s=corr_threshold_s,
												speed_of_sound=speed_of_sound,
												pulse_samples=pulse_samples,
												delay_samples=delay_samples):
											staging = []
											#Add simulated noise from environment
											noisy_signal = sim.signal.quantize(sim.signal.add_noise(attenuated_signal, signal_to_noise, gain), sample_bits)
											for corr_threshold in corr_threshold_s:
												#Support for threshold depending on maximum
												corr_threshold_orig = corr_threshold
												if corr_threshold <= 1:
													corr_threshold *= max_peak
												correlation = sim.signal.correlate(noisy_signal, reference_signal_quantized)
												peak, peak_samples, peak_avg, peak_max = sim.signal.peak_index(correlation, corr_threshold, sample_rate)
												error_time = delay_time - peak
												error_position = error_time * speed_of_sound
												#Package information
												params = (
													sample_rate,
													sample_bits,
													center_freq,
													chirp_freq,
													pulse_time,
													delay_time,
													gain,
													signal_to_noise,
													corr_threshold_orig,
													speed_of_sound,
												)
												name = f"{sample_rate}Hz_{sample_bits}b_{center_freq}Hz_{chirp_freq}Hz_{pulse_time}s_{delay_time}s_{gain}_{signal_to_noise}SNR_{corr_threshold_orig}_{speed_of_sound}m+s_{run_number}"
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
												staging += [(params, r)]
											return staging
										for staging in mapper(run_worker, range(simulate_runs)):
											#for staging in processes.map(run_worker, range(simulate_runs)):
											for params, r in staging:
												#Add to results for generating statistics
												if params in result:
													result[params].append(r)
												else:
													result[params] = [r]
												#Show progress
												done_runs += 1
												if done_runs % progress_step == 0:
													print(f"\r{done_runs} / {total_runs} ", end='')
	print(f"\r{done_runs} / {total_runs} [Complete]")
	#Headers for saving
	csv_header1 = ['sample_rate', 'sample_bits', 'center_freq', 'chirp_freq', 'pulse_time', 'delay_time', 'gain', 'signal_to_noise', 'corr_threshold', 'speed_of_sound']
	csv_header2 = ['peak', 'peak_samples', 'peak_value_average', 'peak_value_max', 'error_time', 'error_position']
	csv_stats_suffixes = ['_avg', '_stdev', '_min', '_max']
	if save_csv:
		#Save raw CSV
		with open('./out/raw.csv', 'w', newline='') as csv_file:
			csv_writer = csv.writer(csv_file)
			csv_writer.writerow(csv_header1 + csv_header2)
			for params, r_s in result.items():
				for r in r_s:
					csv_writer.writerow(params + r)
		#Save stats CSV
		with open('./out/stats.csv', 'w', newline='') as csv_file:
			csv_writer = csv.writer(csv_file)
			csv_writer.writerow(csv_header1 + [h + s for h in csv_header2 for s in csv_stats_suffixes])
			for params, r_s in result.items():
				#Filter out rows that have an unacceptable error
				if max_error_time < np.inf:
					error_time_max = sim.util.stats([abs(r[4]) for r in r_s])[3]
					if not (error_time_max <= max_error_time):
						continue
				#Write row
				csv_writer.writerow(list(params) + [item for i in range(6) for item in sim.util.stats([abs(r[i]) for r in r_s])])
	#Print important stats
	print('Stats:', '(' + ', '.join(csv_header1) + ')', '=', '[' + ', '.join(csv_header2) + ']')
	for params, r_s in result.items():
		#Filter out rows that have an unacceptable error
		if max_error_time < np.inf:
			error_time_max = sim.util.stats([abs(r[4]) for r in r_s])[3]
			if not (error_time_max <= max_error_time):
				continue
		#Display row
		stats = [sim.util.si_units(item, i == 4 and 's' or 'm') for i in range(4, 6) for item in sim.util.stats([abs(r[i]) for r in r_s])]
		print(params, '=', stats)
	print('Done', sim.util.si_units(time.perf_counter() - start_up, 's'))
