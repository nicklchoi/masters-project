#!/usr/bin/env python3
from adafruit_servokit import ServoKit
import adafruit_ads1x15.ads1115 as ADS
from adafruit_ads1x15.analog_in import AnalogIn
from time import sleep
import board
import busio


class MotorDriver:
    def __init__(self, pwm_channel=0, fsr_channel = None):
        self.channel = pwm_channel
        self.current_angle = 0
        self.kit = ServoKit(channels=16)
        self.kit.servo[self.channel].set_pulse_width_range(500,2500)
        self.i2c = busio.I2C(board.SCL, board.SDA)
        self.ads = ADS.ADS1115(self.i2c)
        self.pressure = 0
        self.fsr_channel = fsr_channel
        self.fsr_channel_val = []

        self.fsr0 = 0
        self.fsr1 = 0
        self.fsr2 = 0
        self.fsr3 = 0

        self.fsrDict = {
            "0": ADS.P0,
            "1": ADS.P1,
            "2": ADS.P2,
            "3": ADS.P3,
        }

        self.fsrChannel = self.fsrDict[self.fsr_channel]

    def fsr_detect(self):
        self.fsr0 = AnalogIn(self.ads, ADS.P0)
        self.fsr1 = AnalogIn(self.ads, ADS.P1)
        self.fsr0 = self.fsr0.value
        self.fsr1 = self.fsr1.value
        return [self.fsr0, self.fsr1]


    def current_pos(self):
        #print(self.current_angle)
        print("Current positon: " + str(self.current_angle) + " degrees.")

    def move(self, ang):
        self.current_angle = ang
        print("Moving to " + str(ang) + "degrees.")
        self.kit.servo[self.channel].angle = ang

    def gentle_move(self, ang):
        print("Moving to " + str(ang) + "degrees.")
        print("fsrChannel")
        print(self.fsrChannel)
        self.current_angle = 0
        self.kit.servo[self.channel].angle = self.current_angle
        sleep(2)
        while self.current_angle < ang:
            self.current_angle = self.current_angle + 1
            self.fsr_channel_val = self.fsr_detect()
            print(self.fsr_channel_val[0], self.fsr_channel_val[1])
            if self.fsr_channel == "0":
                #self.fsr0 = AnalogIn(self.ads, ADS.P0)
                #self.fsr0 = self.fsr0.value
                #self.fsr_channel_val = AnalogIn(self.ads, self.fsrChannel)
                #self.pressure = self.fsr_channel_val.value
                print("FSR0: ", self.fsr_channel_val[0])
                print(self.fsr_channel_val[0], self.fsr_channel_val[1])
                if self.fsr0 > 20000:
                    print("FSR 0 pressure exceeded 20,000!")
                    break
                self.kit.servo[self.channel].angle = self.current_angle
                #print(self.current_angle)
                sleep(0.005)

            elif self.fsr_channel == "1":
                self.fsr1 = AnalogIn(self.ads, ADS.P1)
                self.fsr1 = self.fsr1.value
                # self.fsr_channel_val = AnalogIn(self.ads, self.fsrChannel)
                # self.pressure = self.fsr_channel_val.value
                #print("FSR1: ", self.fsr1)
                if self.fsr1 > 20000:
                    print("FSR1 pressure exceeded 20,000!")
                    break
                self.kit.servo[self.channel].angle = self.current_angle
                # print(self.current_angle)
                sleep(0.005)
            else:
                return

    def home(self):
        print("Moving to home.")
        self.kit.servo[self.channel].angle = 0
        self.current_angle = 0

