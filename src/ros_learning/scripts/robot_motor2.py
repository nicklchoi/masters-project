#!/usr/bin/env python3

import rospy
from ros_learning.msg import MotorAngle
from std_msgs.msg import Int32MultiArray
from adafruit_servokit import ServoKit
import board
import busio
import adafruit_ads1x15.ads1115 as ADS
from time import sleep

global fsr_val

fsr_val = 0

def motor2_angle_callback(motor_msg):
    #rospy.loginfo("Motor 1 angle: %s, Motor 2 angle: %s" %(motor_msg.motor1, motor_msg.motor2))
    kit.servo[2].angle = motor_msg.motor2
    #kit.servo[1].angle = msg.motor2

    print("Moving servo 2 to " + str(motor_msg.motor2) + "degrees.")
    current_angle = 180
    kit.servo[2].angle = current_angle
    sleep(2)
    while current_angle > motor_msg.motor2:
        current_angle = current_angle - 1
        if fsr_val > 1000:
            print("Servo 2 pressure exceeded 20,000! Stopping Motor.")
            break
        kit.servo[2].angle = current_angle
        #print(current_angle)
        #print(fsr_val)
        #sleep(0.005)
        sleep(0.1)

def fsr_callback(fsr_msg):
    global fsr_val
    ##rospy.loginfo("Subscribing: FSR1: " + str(fsr_msg.data[0]))
    fsr_val = fsr_msg.data[0]


def listener():
    rospy.init_node('motor2_angle_sub', anonymous=True)
    rospy.Subscriber('motor_angle', MotorAngle, motor2_angle_callback)
    rospy.Subscriber('fsr_data', Int32MultiArray, fsr_callback)

if __name__ == "__main__":
    kit = ServoKit(channels=16)
    kit.servo[2].set_pulse_width_range(500, 2350)
    i2c = busio.I2C(board.SCL, board.SDA)
    ads = ADS.ADS1115(i2c)

    listener()
    rospy.spin()





"""

def motor2_angle_callback(msg):
    rospy.loginfo("Motor 1 angle: %s, Motor 2 angle: %s" %(msg.motor1, msg.motor2))
    #kit.servo[0].angle = msg.motor1
    kit.servo[1].angle = msg.motor2

def motor2_angle_listener():
    rospy.init_node('motor2_angle_sub', anonymous=True)
    rospy.Subscriber('motor_angle', MotorAngle, motor2_angle_callback)

if __name__ == "__main__":
    kit = ServoKit(channels=16)
    #kit.servo[0].set_pulse_width_range(500, 2500)
    kit.servo[1].set_pulse_width_range(500, 2500)

    i2c = busio.I2C(board.SCL, board.SDA)
    ads = ADS.ADS1115(i2c)

    motor2_angle_listener()

    rospy.spin()

"""