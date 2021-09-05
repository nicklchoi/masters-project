#!/usr/bin/env python3

from __future__ import print_function
from ros_learning.srv import servo
import rospy
from adafruit_servokit import ServoKit
from time import sleep

def handle_servo_move(ang):
    print("Moving servo to " + str(ang.a) + " degrees.")
    kit.servo[0].angle = ang.a
    sleep(0.5)

def servo_service_server():
    rospy.init_node('servo_service_server')
    s = rospy.Service('servo_server', servo, handle_servo_move)
    print("Servo on standby.")
    rospy.spin()

if __name__ == "__main__":
    kit = ServoKit(channels=16)
    kit.servo[0].set_pulse_width_range(500,2500)
    servo_service_server()
