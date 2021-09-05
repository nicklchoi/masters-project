#!/usr/bin/env python3
import rospy
from std_srvs.srv import SetBool
import Jetson.GPIO as GPIO

LED_GPIO = 11

def set_led_state_callback(req):
    GPIO.output(LED_GPIO, req.data)
    return {'success' : True,
            'message': 'Successfully changed LED state'}

if __name__ == '__main__':
    rospy.init_node('led_actuator')

    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(LED_GPIO, GPIO.OUT) 
    
    rospy.Service('set_led_state', SetBool, set_led_state_callback)
    rospy.loginfo("Service server started. Ready to get requests.")

    rospy.spin()

    GPIO.cleanup()

