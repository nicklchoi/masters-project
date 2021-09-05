#!/usr/bin/env python3

import rospy
from std_msgs.msg import Bool
import Jetson.GPIO as GPIO

LED_GPIO = 11

def button_state_callback(msg):
    GPIO.output(LED_GPIO, msg.data)

if __name__ == '__main__':
    rospy.init_node('led_actuator')

    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(LED_GPIO, GPIO.OUT)

    rospy.Subscriber('button_state', Bool, button_state_callback)

    rospy.spin()

    GPIO.cleanup()


