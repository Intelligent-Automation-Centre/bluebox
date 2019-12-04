#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <geometry_msgs/WrenchStamped.h>
#include "muscle_activity/muscle_eg_signal.h"
#include "ros/ros.h"
#include <sstream>
#include <iostream>


using namespace geometry_msgs;
using namespace message_filters;
using namespace muscle_activity;


class Node{
public:
	Node():
        muscle_eg_sub_(nh_,"/muscle_eg_f",100),
        ft_msgs_sub_(nh_,"/ft_sensor/netft_data",100),
        ft_msgs_pub(nh_.advertise<WrenchStamped>("/ft_msgs_sync",100)),
		muscle_egSynch_pub(nh_.advertise<muscle_eg_signal>("/muscle_eg_synch",100)),
        sync(MySyncPolicy(10),  ft_msgs_sub_,muscle_eg_sub_){
             sync.registerCallback(boost::bind(&Node::callback, this,_1, _2));
        }


void callback(const WrenchStampedConstPtr &ft_msgs,const muscle_eg_signalConstPtr &muscle_eg_s)
       {
	   	  ROS_INFO("In callback");
	   	  muscle_eg_signal muscle_eg_sync1=*muscle_eg_s;
          WrenchStamped ft_msgs_sync=*ft_msgs;
          muscle_egSynch_pub.publish(muscle_eg_sync1);
          ft_msgs_pub.publish(ft_msgs_sync);
        }
private:
   ros::NodeHandle nh_;

   typedef message_filters::Subscriber<muscle_eg_signal> muscle_eg_sub;
   muscle_eg_sub muscle_eg_sub_;
   typedef message_filters::Subscriber<WrenchStamped> ft_msg_sub;
   ft_msg_sub ft_msgs_sub_;
   typedef message_filters::sync_policies::ApproximateTime<WrenchStamped,muscle_eg_signal> MySyncPolicy;
   message_filters::Synchronizer< MySyncPolicy > sync;
   ros::Publisher ft_msgs_pub;
   ros::Publisher muscle_egSynch_pub;
};

///////////////////////////////////////////////////////////////////////
////////////////////////(       Main        )//////////////////////////
///////////////////////////////////////////////////////////////////////

int main(int argc, char **argv)
{
	ROS_INFO("Start ROS SYNCH node!");
    ros::init (argc, argv, "Mmessage_synch_node");
    Node NH;
    ROS_INFO("Message Synchroniser Initialised!");

    while (ros::ok())
    {
        ros::spin();
        ROS_INFO("checking ...");

    }
    ros::shutdown();
    return 0;
}
