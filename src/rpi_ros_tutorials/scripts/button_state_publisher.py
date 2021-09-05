#!/usr/bin/env python3
import rospy
from std_msgs.msg import Bool
import Jetson.GPIO as GPIO

BUTTON_GPIO = 7

if __name__ == '__main__':
    rospy.init_node('button_state_publisher')

    pub = rospy.Publisher('button_state', Bool, queue_size = 10)

    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(BUTTON_GPIO, GPIO.IN)
    
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        gpio_state = not GPIO.input(BUTTON_GPIO)
        pub.publish(gpio_state)
        rate.sleep()


    GPIO.cleanup()


