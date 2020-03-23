from tkinter import *

# Create window object
app = Tk()

# Part
part_text = StringVar()

part_label0 = Label(app, text='Location Coordinates', font=('bold', 14), pady=10)
part_label0.grid(row=0, column=1)

part_label1 = Label(app, text='Transmitter', font=('bold', 14), padx=22)
part_label1.grid(row=1, column=0)
part_label2 = Label(app, text='Receiver 1', font=('bold', 14))
part_label2.grid(row=2, column=0)
part_label3 = Label(app, text='Receiver 2', font=('bold', 14))
part_label3.grid(row=3, column=0)
part_label4 = Label(app, text='Receiver 3', font=('bold', 14))
part_label4.grid(row=4, column=0)
part_label5 = Label(app, text='Receiver 4', font=('bold', 14))
part_label5.grid(row=5, column=0)

part_entry1 = Entry(app, textvariable=part_text)
part_entry1.grid(row=1, column=1)
part_entry2 = Entry(app, textvariable=part_text)
part_entry2.grid(row=2, column=1)
part_entry3 = Entry(app, textvariable=part_text)
part_entry3.grid(row=3, column=1)
part_entry4 = Entry(app, textvariable=part_text)
part_entry4.grid(row=4, column=1)
part_entry5 = Entry(app, textvariable=part_text)
part_entry5.grid(row=5, column=1)

part_label5 = Label(app, text='Visual Display', font=('bold', 14), padx=0, pady=30)
part_label5.grid(row=6, column=1)

part_label6 = Label(app, text='R1', font=('bold', 14))
part_label6.grid(row=7, column=1, sticky=W)
part_label7 = Label(app, text='R2', font=('bold', 14))
part_label7.grid(row=7, column=1, sticky=E)
part_label8 = Label(app, text='T', font=('bold', 14), pady=30)
part_label8.grid(row=8, column=1)
part_label9 = Label(app, text='R3', font=('bold', 14), pady=30)
part_label9.grid(row=9, column=1, sticky=W)
part_label10 = Label(app, text='R4', font=('bold', 14), pady=30)
part_label10.grid(row=9, column=1, sticky=E)

app.title('High Precision Local Positioning System')
app.geometry('400x500')

# Start program
app.mainloop()

