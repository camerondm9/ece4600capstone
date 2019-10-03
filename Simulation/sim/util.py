from collections.abc import Iterable

def ensure_iterable(a):
	"Passes iterable things through, wraps other things in a list so they can be iterated"
	if isinstance(a, Iterable) and not isinstance(a, str):
		return a
	else:
		return [a]
