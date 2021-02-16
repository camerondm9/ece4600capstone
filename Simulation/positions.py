import math

A = (0, 0)
B = (1, 0)
C = (2, 5)
D = (7, 3)

print('A =', A)
print('B =', B)
print('C =', C)
print('D =', D)
print()

def distance(a, b):
	dx = a[0] - b[0]
	dy = a[1] - b[1]
	return math.sqrt(dx*dx + dy*dy)

AB = BA = distance(A, B)
AC = CA = distance(A, C)
AD = DA = distance(A, D)
BC = CB = distance(B, C)
BD = DB = distance(B, D)
CD = DC = distance(C, D)

print('AB =', AB)
print('AC =', AC)
print('AD =', AD)
print('BC =', BC)
print('BD =', BD)
print('CD =', CD)
print()

A = (0, 0)
B = (AB, 0)
C = () #TODO: Solve algorithmically, using triangle math. Code from KiCad_util for distance-along-line and distance-from-line should work. Assign coordinates to match right-hand-rule...
D = () #TODO: Use the least-squares method of matrix solving to find this coordinate, and all others from this point onwards...

#TODO: https://en.wikipedia.org/wiki/Distance_from_a_point_to_a_line
# https://rosap.ntl.bts.gov/view/dot/12301
# https://en.wikipedia.org/wiki/True_range_multilateration
# https://textbooks.math.gatech.edu/ila/least-squares.html


print('A =', A)
print('B =', B)
print('C =', C)
print('D =', D)
