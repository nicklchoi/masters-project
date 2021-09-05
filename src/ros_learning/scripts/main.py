#!/usr/bin/env python3

from adafruit_servokit import ServoKit
from time import sleep
import board
import busio
import adafruit_ads1x15.ads1115 as ADS
from adafruit_ads1x15.analog_in import AnalogIn

kit = ServoKit(channels = 16)

kit.servo[0].set_pulse_width_range(500,2500)


def servoHome():
    kit.servo[0].angle = 0

def servoMove(ang):
    print("Moving to " + str(ang) + "degrees.")
    current_angle = 0
    kit.servo[0].angle = current_angle
    sleep(2)
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

if __name__ == "__main__":

    i2c = busio.I2C(board.SCL, board.SDA)
    ads = ADS.ADS1115(i2c)

    servoMove(180)
    servoMove(120)
    servoMove(30)
