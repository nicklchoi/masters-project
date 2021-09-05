#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32MultiArray
from time import sleep

def callback(msg):
    rospy.loginfo("Subscribing: FSR1:  " + str(msg.data[0]) + " FSR2: " + str(msg.data[1]))

def listener():
    rospy.init_node('fsr_sub', anonymous = True)
    rospy.Subscriber('fsr_data', Int32MultiArray, callback)

    rospy.spin()

if __name__ == "__main__":
    listener()
