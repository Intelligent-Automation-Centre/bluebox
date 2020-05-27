#!/usr/bin/env python
from muse import Muse
from time import sleep
import numpy as np
import os
import RPi.GPIO as GPIO
import rospy
import time
from std_msgs.msg import String
from muse_signal.msg import muse_signal_msg



# MAC address of the Muse
address="00:55:DA:B3:EC:FF"

# full_time = []
# full_data = []

#print 'Initailising ROS node'
rospy.loginfo('Initailising Muse ROS node')
pub = rospy.Publisher('muse_signal',muse_signal_msg , queue_size=100)
rospy.init_node('muse_signal_pub', anonymous=True)
rate = rospy.Rate(10000) # hz
msg=muse_signal_msg()

def process(data, timestamps):
    #print (len(data))
    #print (type(data))
    #full_time.append(timestamps)
    #full_data.append(data)
    time.sleep(1)


    for i in range(12):
        msg.header.stamp = rospy.Time.now()
        msg.header.frame_id = "Brain Signals"
        msg.name=['TP9', 'AF7', 'AF8', 'TP10', 'Right AUX']
        msg.signal=data[:,i]
        rospy.loginfo('Headband Signal Publisher')
        pub.publish(msg)


muse = Muse(address, process)

muse.connect()
muse.start()



while not rospy.is_shutdown():
    try:
        sleep(1)
    except:
        break

#print 'disconnect muse now!!'
rospy.loginfo('disconnect Muse now!!')
muse.stop()
muse.disconnect()

# full_time = np.concatenate(full_time)
# full_data = np.concatenate(full_data, 1).T
# res = pd.DataFrame(data=full_data,
#                    columns=['TP9', 'AF7', 'AF8', 'TP10', 'Right AUX'])
#
# res['timestamps'] = full_time
# res.to_csv('dump.csv', float_format='%.3f')
