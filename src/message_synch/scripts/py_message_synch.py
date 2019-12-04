#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from muscle_activity.msg import muscle_eg_signal
import time
import numpy as np
import message_filters
from geometry_msgs import msg

rospy.init_node('py_message_synchroniser', anonymous=True)
rate = rospy.Rate(10000)
_muscle_sync_pub=rospy.Publisher('/muscle_eg_sync',muscle_eg_signal,queue_size=100)
_ft_sync_pub=rospy.Publisher('/ft_synch',msg.WrenchStamped,queue_size=100)

def callback(image, camera_info):
  # Solve all of perception here...
  rospy.loginfo('In callback')
  _ft_sync_pub.publish(camera_info)
  _muscle_sync_pub.publish(image)




 # 10hz
image_sub = message_filters.Subscriber('/muscles_activity_pub', muscle_eg_signal)
info_sub = message_filters.Subscriber('/ft_sensor/netft_data', msg.WrenchStamped)

ts = message_filters.ApproximateTimeSynchronizer([image_sub, info_sub], 10,100)
ts.registerCallback(callback)
rospy.spin()
