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

#Run simulations
for i in air_temperature:
	for j in air_humidity:
		for k in air_pressure:
			speed_of_sound(i, j, k)
