# GUI for CAPSTONE

import serial
import time
import pygame
import tkinter as tk
from tkinter import *

# start up the program
print("Start")

"""Create Window"""
root = tk.Tk()

"""Edit Window"""
root.title("High Precision Ultrasonic Local Positioning System")
root.geometry("900x600")
root.configure(background="lightgrey")

frame = tk.Frame(root, bg="white")
frame.place(relx=0.05, rely=0.05, relwidth=0.45, relheight=0.9)

text_1 = Label(frame,
               text="TOWER LOCATION COORDINATES",
               bd=1,
               font="Times 16",
               height=7,
               anchor=CENTER
               )
text_1.pack()

text_2 = Label(frame,
               text="Tower 1:",
               bd=1,
               font="Times 16",
               height=3,
               width=40,
               anchor=W
               )
text_2.pack()

text_3 = Label(frame,
               text="Tower 2:",
               bd=1,
               font="Times 16",
               height=3,
               width=40,
               anchor=W
               )
text_3.pack()

text_4 = Label(frame,
               text="Tower 3:",
               bd=1,
               font="Times 16",
               height=3,
               width=40,
               anchor=W
               )
text_4.pack()

text_5 = Label(frame,
               text="Tower 4:",
               bd=1,
               font="Times 16",
               height=3,
               width=40,
               anchor=W
               )
text_5.pack()

text_6 = Label(frame,
               text="Tower 5:",
               bd=1,
               font="Times 16",
               height=3,
               width=40,
               anchor=W
               )
text_6.pack()


"""Action Event"""
def pause_function():
    global music_mode
    pygame.mixer.music.pause()
    music_mode = False
    return music_mode


def unpause_function():
    global music_mode
    pygame.mixer.music.unpause()
    music_mode = True
    return music_mode


def calibrate_function():
    #input_data = serialPort.readline()
    header_1 = Label(frame, text="---CALIBRATION PHASE---", font="Times 15", pady=5)
    header_1.pack()

    text_2 = Label(frame, text="Hold arm in place for 5 seconds \n", font="Times 15", pady=5)
    text_2.pack()

    del_total = 0

    for i in range(10):
        global del_threshold
        #input_data = serialPort.readline()
        #data = input_data.decode('utf-8')
       # split_data = data.split(',')
        #del_data = float(split_data[0])

        #print("del_data = %s" % del_data)

       # del_total += del_data

        time.sleep(0.5)

    del_threshold = del_total/10

    text_2 = Label(frame, text="Calibration Completed \n"
                               "Press 'Start Music'", font="Times 15", pady=5)
    text_2.pack()

    print("del_threshold=%s" % del_threshold)

    return del_threshold


def start_function():
    pygame.init()
    pygame.mixer.init()
    pygame.mixer.music.load(file)
    pygame.mixer.music.play(-1)
    music_mode = True
    volume_mode = True
    last_time = time.time()
    running = True

    while running:
        #input_data = serialPort.readline()
       # data = input_data.decode('utf-8')
       # split_data = data.split(',')
       # del_data = float(split_data[0])
        #print("del data = %s" % del_data)

        if time.time() - last_time > 3:
          #  if del_data > del_threshold:
                if music_mode:
                    pause_function()
                    music_mode = False
                    last_time = time.time()
                else:
                    unpause_function()
                    music_mode = True
                    last_time = time.time()


"""Register Buttons"""
loc_button = tk.Button(root, text="Refresh Location", fg="black", bg="grey", command=calibrate_function)
loc_button.place(relx=0.15, rely=0.85, relwidth=0.25, relheight=0.05)

"""Activate"""
root.mainloop()
