#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int32
from std_msgs.msg import Int32MultiArray
import board
import busio
from time import sleep
import adafruit_ads1x15.ads1115 as ADS
from adafruit_ads1x15.analog_in import AnalogIn

def fsr_detect():
    fsr1 = AnalogIn(ads, ADS.P0)
    fsr2 = AnalogIn(ads, ADS.P1)
    print("FSR1: " + str(fsr1.value) + " FSR2: " + str(fsr2.value))  # chan.voltage also possible
    # if fsr1.value < 100:
    #    print("No Pressure")
    # elif 100 <= fsr1.value < 10000:
    #    print("Light Pressure")
    # elif 10000 <= fsr1.value < 20000:
    #    print("Medium Pressure")
    # else:
    #    print("Heavy Pressure")
    rospy.loginfo("Publishing FSR Data")
    pub.publish(fsr1.value)
    rate.sleep()
    sleep(0.1)


if __name__ == '__main__':

    i2c = busio.I2C(board.SCL, board.SDA)
    ads = ADS.ADS1115(i2c)

    rospy.init_node('fsr_pub', anonymous=True)
    pub = rospy.Publisher('fsr_data', Int32, queue_size=10)  # servo_angle topic
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        try:
            fsr_detect()
        except rospy.ROSInterruptException:
            pass



