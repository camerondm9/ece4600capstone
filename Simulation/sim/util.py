import numpy as np
from collections.abc import Iterable
import math

def ensure_iterable(a):
	"Passes iterable things through, wraps other things in a list so they can be iterated"
	if isinstance(a, Iterable) and not isinstance(a, str):
		return a
	else:
		return [a]

def stats(a):
	"Returns (avg, stddev, min, max) of the items in the list"
	a = np.asarray(a)
	if len(a) <= 1:
		return (a[0], np.nan, np.nan, np.nan)
	return (np.average(a), np.std(a, dtype=np.float64, ddof=1), np.min(a), np.max(a))

def si_units(number, base_unit):
	if math.isnan(number):
		return 'NaN'
	prefixes = ['P', 'T', 'G', 'M', 'k', '', 'm', 'μ', 'n', 'p', 'f']
	offset = len(prefixes) // 2
	#TODO: Maybe use a logarithm to make this more efficient?
	for i in range(len(prefixes)):
		exponent = (offset - i) * 3
		power = 10**exponent
		if abs(number) >= power:
			return f"{(number / power):0.1f}{prefixes[i]}{base_unit}"
	#Special case for numbers that are almost big enough to be caught by the loop above
	if abs(number) >= 0.01 * power:
		return f"{(number / power):0.2f}{prefixes[i]}{base_unit}"
	#Number is really tiny, round to zero
	return '0'
