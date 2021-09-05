#!/usr/bin/env python3

from __future__ import print_function
import rospy
import sys
from ros_learning.srv import *

def servo_move_callback(ang):
    rospy.wait_for_service('servo_server')
    try:
        servo_server = rospy.ServiceProxy('servo_server', servo)
        resp = servo_server(ang)
    except rospy.ServiceException as e:
        rospy.logwarn(e)

if __name__ == "__main__":
    if len(sys.argv) == 2:
        ang = int(sys.argv[1])
    else:
        sys.exit(1)
    print("Requesting servo move to " + str(ang) + " degrees.")
    servo_move_callback(ang)
