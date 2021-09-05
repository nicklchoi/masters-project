#!/usr/bin/env python3

import rospy 
from std_msgs.msg import String
from time import sleep

def move_servo():
    for i in range(19):
        ang = i*10
        print("Moving to " + str(ang) + "degrees.")
        #kit.servo[0].angle = ang
        rospy.loginfo(str(ang))
        pub.publish(str(ang))
        rate.sleep()
        sleep(0.5)
    

if __name__ == '__main__':
   
    rospy.init_node('talker', anonymous = True)
    pub = rospy.Publisher('servo_angle', String, queue_size = 10) # servo_angle topic
    rate = rospy.Rate(10)
    
    while not rospy.is_shutdown():
        try:
            move_servo()
        except rospy.ROSInterruptException:
            pass

