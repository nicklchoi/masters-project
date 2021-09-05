#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(msg):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", msg.data)

    global angle
    angle = msg.data

    if int(angle) == 100:
        print("ANGLE AT100. STOP!")

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same 
    # name are launched, the previous one is kicked off. The 
    # anonymous = True flag means that rospy will choose a unique 
    # name for our 'listener' node so that multiple listeners can
    # listen simulataneously.
    
    rospy.init_node('listener', anonymous = True)
    rospy.Subscriber('servo_angle', String, callback) # servo_angle topic
    

    # spin() keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ =='__main__':
    listener()

        
