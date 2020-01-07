import csv
from collections import deque

def pairs(xs, ys, xkey=None, ykey=None):
	xs = deque(xs)
	ys = deque(ys)

	while xs and ys:
		#Get keys
		xk = xs[0]
		if xkey is not None:
			xk = xkey(xk)
		yk = ys[0]
		if ykey is not None:
			yk = ykey(yk)
		#Compare keys and generate entry
		if xk == yk:
			yield xs.popleft(), ys.popleft()
		elif xk < yk:
			yield xs.popleft(), None
		else:
			yield None, ys.popleft()

	for x in xs: yield x, None
	for y in ys: yield None, y

def split_ref(ref):
	for i in range(len(ref)):
		if ref[i].isdigit():
			return (ref[0:i], int(ref[i:]))
	return (ref, -1)

class BomData:
	def __init__(self, ref='', value='', footprint='', url=''):
		self.ref = ref
		self.value = value
		self.footprint = footprint
		self.url = url

csv.register_dialect('kicad_pcb_bom', delimiter=';', quotechar='"')

bom_layout = list()
with open('./layout.csv', 'r', newline='') as csv_file:
	csv_reader = csv.reader(csv_file, 'kicad_pcb_bom')
	print('Layout BOM:')
	print('  ' + ','.join(next(csv_reader)))
	for row in csv_reader:
		for ref in row[1].split(','):
			bom_layout.append(BomData(ref, row[4], row[2]))
bom_layout.sort(key=lambda d: split_ref(d.ref))

bom_schematic = list()
with open('./schematic.csv', 'r', newline='') as csv_file:
	csv_reader = csv.reader(csv_file)
	print('Schematic BOM:')
	for i in range(5):
		print('  ' + ','.join(next(csv_reader)))
	for row in csv_reader:
		for ref in row[0].split(','):
			bom_schematic.append(BomData(ref, row[1], row[2], row[3]))
bom_schematic.sort(key=lambda d: split_ref(d.ref))

print()

csv_header = ['Reference', 'Value_Layout', 'Footprint_Layout', 'Value_Schematic', 'Footprint_Schematic', 'URL']
with open('./merged.csv', 'w', newline='') as csv_file:
	csv_writer = csv.writer(csv_file)
	csv_writer.writerow(csv_header)
	for l,s in pairs(bom_layout, bom_schematic, xkey=lambda d: d.ref, ykey=lambda d: d.ref):
		if l is None:
			csv_writer.writerow([s.ref, '', '', s.value, s.footprint, s.url])
			print('Schematic only part: ' + s.ref + ', V=' + s.value + ', F=' + s.footprint)
		elif s is None:
			csv_writer.writerow([l.ref, l.value, l.footprint, '', '', ''])
			print('Layout only part: ' + l.ref + ', V=' + l.value + ', F=' + l.footprint)
		else:
			csv_writer.writerow([s.ref, l.value, l.footprint, s.value, s.footprint, s.url])
			s_footprint = s.footprint[s.footprint.index(':')+1:]
			if l.value != s.value or l.footprint != s_footprint:
				print('Schematic/layout difference: ' + s.ref + ', V=' + s.value + '/' + l.value + ', F=' + s.footprint + '/' + l.footprint)
