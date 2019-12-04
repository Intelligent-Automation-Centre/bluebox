#!/usr/bin/env python

import os
import RPi.GPIO as GPIO
import time
import rospy
from std_msgs.msg import String
from nose_temp.msg import nose_temp
import numpy as np

os.system('modprobe w1-gpio')
os.system('modprobe w1-therm')

temp_sensor = "/sys/bus/w1/devices/28-0300a2792c2d/w1_slave"


def temp_raw():

    f = open(temp_sensor, 'r')
    lines = f.readlines()
    f.close()
    return lines

def read_temp():
    lines = temp_raw()
    while lines[0].strip()[-3:] != 'YES':
        time.sleep(0.2)
        lines = temp_raw()

    temp_output = lines[1].find('t=')
    if temp_output != -1:
        temp_string = lines[1].strip()[temp_output+2:]
        temp_c = float(temp_string) / 1000.0
        temp_f = temp_c * 9.0 / 5.0 + 32.0
        return temp_c, temp_f


def talker():
    pub = rospy.Publisher('nose_temp_pub',nose_temp , queue_size=10)
    rospy.init_node('nose_temp', anonymous=True)
    rate = rospy.Rate(1000) # hz
    while not rospy.is_shutdown():
        #print(read_temp())
        time.sleep(1)
        msg=nose_temp()
        msg.header.stamp = rospy.Time.now()
        msg.header.frame_id = "Nose_temp (deg C)"
        msg.temprature,_=read_temp()
        rospy.loginfo('Nose Temp Publisher')
        pub.publish(msg)

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
