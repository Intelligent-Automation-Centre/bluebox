#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from std_msgs.msg import Float64MultiArray
from muscle_activity.msg import muscle_eg_signal
import time
import numpy as np
# Import the ADS1x15 module.
import Adafruit_ADS1x15

# Or create an ADS1015 ADC (12-bit) instance.
adc = Adafruit_ADS1x15.ADS1015()

# Note you can change the I2C address from its default (0x48), and/or the I2C
# bus by passing in these optional parameters:
#adc = Adafruit_ADS1x15.ADS1015(address=0x49, busnum=1)

# Choose a gain of 1 for reading voltages from 0 to 4.09V.
# Or pick a different gain to change the range of voltages that are read:
#  - 2/3 = +/-6.144V
#  -   1 = +/-4.096V
#  -   2 = +/-2.048V
#  -   4 = +/-1.024V
#  -   8 = +/-0.512V
#  -  16 = +/-0.256V
# See tabl


def talker():
    GAIN = 1
    pub = rospy.Publisher('muscles_activity_pub',muscle_eg_signal , queue_size=10)
    rospy.init_node('mapub', anonymous=True)
    rate = rospy.Rate(1000) # 10hz
    while not rospy.is_shutdown():
        msg=muscle_eg_signal()
        names=['r_arm','l_arm','r_forearm','l_forearm']
        msg.name=names
        values = np.zeros(4)
        for i in range(4):
        # Read the specified ADC channel using the previously set gain value.
            values[i] = adc.read_adc(i, gain=GAIN,data_rate=3300)#data_rate HZ

        print msg.name

        msg.header.stamp = rospy.Time.now()
        msg.header.frame_id = "muscle activity"
        #msg.eg_signal.layout.dim=[1,1,1,1]
        #msg.eg_signal.data=values
        msg.eg_signal = values
        print type(values[0])
        print msg.eg_signal
        rospy.loginfo('muscle_activity')
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
