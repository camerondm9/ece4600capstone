from collections.abc import Iterable
import numpy as np

#SI prefixes
G	= 1000_000_000
M	= 1000_000
K	= 1000
m	= 0.001
u	= 0.000_001
n	= 0.000_000_001

#Simulation parameters
samplerate	= 4*M
samplebits	= 8
centerfreq	= 400*K
chirpfreq	= 0
pulsetime	= 300*u

signal_delay			= []
noise_amplitude			= []
correlation_threshold	= 0.5

air_temperature	= 20
air_humidity	= 0.30
air_pressure	= 101.325

#Make everything into iterables
def ensure_iterable(a):
    if isinstance(a, Iterable) and not isinstance(a, str):
        return a
    else:
        return [a]
samplerate = ensure_iterable(samplerate)
samplebits = ensure_iterable(samplebits)
centerfreq = ensure_iterable(centerfreq)
chirpfreq = ensure_iterable(chirpfreq)
pulsetime = ensure_iterable(pulsetime)
signal_delay = ensure_iterable(signal_delay)
noise_amplitude = ensure_iterable(noise_amplitude)
correlation_threshold = ensure_iterable(correlation_threshold)
air_temperature = ensure_iterable(air_temperature)
air_humidity = ensure_iterable(air_humidity)
air_pressure = ensure_iterable(air_pressure)

#Speed of sound
def speed_of_sound(temperature, humidity, pressure):
	return temperature

#Run simulations
for a in samplerate:
    for b in samplebits:
        for c in centerfreq:
            for d in chirpfreq:
                for e in pulsetime:
                    for f in signal_delay:
                        for g in noise_amplitude:
                            for h in correlation_threshold:
                                for i in air_temperature:
                                    for j in air_humidity:
                                        for k in air_pressure:
                                            simulate(a,b,c,d,e,f,g,h,speed_of_sound(i,j,k))

#Simulation parameters (internal)
simulate_time   = pulsetime

#Generate reference signal (for transmission)
