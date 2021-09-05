#!/usr/bin/env python3

from __future__ import print_function
from ros_learning.srv import servo
import rospy
from time import sleep
from adafruit_servokit import ServoKit
import board
import busio
import adafruit_ads1x15.ads1115 as ADS
from adafruit_ads1x15.analog_in import AnalogIn

def servoMove(ang):
    print("Moving to " + str(ang) + "degrees.")
    current_angle = 0
    kit.servo[0].angle = current_angle
    sleep(1)
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
    sleep(2)
    kit.servo[0].angle = 0

def handle_servo_move(ang):
    print("Moving servo to " + str(ang.a) + " degrees.")
    #kit.servo[0].angle = ang.a
    servoMove(ang.a)
    sleep(0.5)

def servo_service_server():
    rospy.init_node('servo_service_server')
    s = rospy.Service('servo_server', servo, handle_servo_move)
    print("Servo on standby.")
    rospy.spin()

if __name__ == "__main__":

    i2c = busio.I2C(board.SCL, board.SDA)
    ads = ADS.ADS1115(i2c)

    kit = ServoKit(channels=16)
    kit.servo[0].set_pulse_width_range(500,2500)
    servo_service_server()
