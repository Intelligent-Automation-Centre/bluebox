#!/usr/bin/env python
import numpy as np
import rospy
import geometry_msgs.msg
from geometry_msgs.msg import WrenchStamped
from muscle_activity.msg import muscle_eg_signal
import message_filters
import sys, time
from geometry_msgs import msg
#import roslib

class Node:
    def __init__(self):
            print 'initalise publishers ......'
            self._muscle_sync_pub=rospy.Publisher('/muscle_eg_sync',msg.WrenchStamped,queue_size=100)
            self._ft_sync_pub=rospy.Publisher('/ft_synch',msg.WrenchStamped,queue_size=100)

            print 'initilzing subscribers ...'
            self._force_sub =  message_filters.Subscriber('/ft_message/netft_data',msg.WrenchStamped)
            self._muscle_sub = message_filters.Subscriber('/muscles_activity_pub',muscle_eg_signal)



            print 'Initalise TimeSynchronizer ............'
            self._ts = message_filters.ApproximateTimeSynchronizer([self._force_sub,self._force_sub],100,10)
            print 'register the callback ...................'
            self._ts.registerCallback(self.callback)


    def callback(self,ft_msg,rpose):
        print 'In callback'
        self._ft_sync_pub.publish(self.ft_msg)
        self._muscle_sync_pub.publish(self.rpose)




def main(args):
     # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('py_message_synchroniser', anonymous=True)
    #r = rospy.Rate(100)
    Nh=Node()#'WRF'

    try:
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()
    except KeyboardInterrupt:
        print "Shutting down syncronizer node"

if __name__ == '__main__':
    main(sys.argv)
