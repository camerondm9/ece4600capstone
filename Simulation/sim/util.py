import numpy as np
from collections.abc import Iterable

def ensure_iterable(a):
	"Passes iterable things through, wraps other things in a list so they can be iterated"
	if isinstance(a, Iterable) and not isinstance(a, str):
		return a
	else:
		return [a]

def stats(a):
	"Returns (avg, stddev, min, max) of the items in the list"
	a = np.asarray(a)
	return (np.average(a), np.std(a, dtype=np.float64, ddof=1), np.min(a), np.max(a))
