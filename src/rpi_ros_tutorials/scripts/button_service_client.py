#!/usr/bin/env python3

import rospy
from std_srvs.srv import SetBool
import Jetson.GPIO as GPIO

BUTTON_GPIO = 7

def button_callback(channel):
    power_on_led = not GPIO.input(BUTTON_GPIO)

    rospy.wait_for_service('set_led_state')
    try:
        set_led_state = rospy.ServiceProxy('set_led_state', SetBool)
        resp = set_led_state(power_on_led)
    except rospy.ServiceException as e:
        rospy.logwarn(e)

if __name__ == '__main__':
    rospy.init_node('button_monitor')
    
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(BUTTON_GPIO, GPIO.IN)

    GPIO.add_event_detect(BUTTON_GPIO, GPIO.BOTH, callback=button_callback, bouncetime=50)

    rospy.spin()

    GPIO.cleanup()
