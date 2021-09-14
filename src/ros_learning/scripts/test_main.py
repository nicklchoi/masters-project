#!/usr/bin/env python3

from adafruit_servokit import ServoKit
from time import sleep
import board
import busio
import adafruit_ads1x15.ads1115 as ADS
from adafruit_ads1x15.analog_in import AnalogIn




def servoHome():
    kit.servo[0].angle = 0

def servoMove(ang):
    #print("Moving to " + str(ang) + "degrees.")
    current_angle = 0
    kit.servo[0].angle = current_angle
    sleep(2)
    """
    while current_angle < ang:
        current_angle = current_angle + 1
        fsr1 = AnalogIn(ads, ADS.P0)
        pressure = fsr1.value
        print(pressure)
        if pressure > 20000:
            break
        kit.servo[0].angle = current_angle
        print(current_angle)
        sleep(0.005)
    """
"""
PCA Channel to Servo
0 thumb mcp
1 thumb pipdip
2 index mcp 
3 index pipdip
4 middle mcp
5 middle pipdip
6 ring mcp
7 ring pipdip
8 pinky mcp
9 pinky pipdip
"""



if __name__ == "__main__":

    i2c = busio.I2C(board.SCL, board.SDA)
    ads = ADS.ADS1115(i2c)

    kit = ServoKit(channels=16)
    kit.servo[1].set_pulse_width_range(500, 2400)
    kit.servo[2].set_pulse_width_range(500, 2350)
    kit.servo[3].set_pulse_width_range(500, 2400)
    kit.servo[4].set_pulse_width_range(500, 2400)

    ## home
    kit.servo[1].angle = 180
    kit.servo[2].angle = 180
    kit.servo[3].angle = 180
    kit.servo[4].angle = 180
    sleep(2)

    ## move
    kit.servo[1].angle = 90
    kit.servo[2].angle = 130
    kit.servo[3].angle = 135
    kit.servo[4].angle = 160
    sleep(5)

    ## home
    kit.servo[1].angle = 180
    kit.servo[2].angle = 180
    kit.servo[3].angle = 180
    kit.servo[4].angle = 180

