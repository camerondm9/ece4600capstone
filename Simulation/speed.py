import sim

#Simulation parameters
air_temperature	= 20
air_humidity	= 0.30
air_pressure	= 101.325

#Make everything into iterables
air_temperature = sim.util.ensure_iterable(air_temperature)
air_humidity = sim.util.ensure_iterable(air_humidity)
air_pressure = sim.util.ensure_iterable(air_pressure)

#Speed of sound
def speed_of_sound(temperature, humidity, pressure):
	return temperature

#TODO: Tables in PDF are of *THEORETICAL* speed of sound, not measured. They were computed from equation at top of page 32, as indicated on page 53.
# Therefore, we should use the equation from page 32, and check its' validity against measured data (from other sources).
# If it's good, we can use it...

#Run simulations
for i in air_temperature:
	for j in air_humidity:
		for k in air_pressure:
			speed_of_sound(i, j, k)
