#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/sync_policies/exact_time.h>
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
	Node(){
		double wait_time;
        muscle_eg_sub_=nh_.subscribe("/muscles_activity_pub",100,&Node::callback,this);
        nh_.param("wait_time", wait_time, 10.0);
		muscle_egSynch_pub=nh_.advertise<muscle_activity::muscle_eg_signal>("muscle_eg_f",100);
		}


void callback(const muscle_activity::muscle_eg_signalConstPtr& muscle_eg_s)
       {
	   	  ROS_INFO("In callback");
	   	  muscle_activity::muscle_eg_signal muscle_eg_sync1=*muscle_eg_s;
	   	  //muscle_activity::muscle_eg_signal nu_stamped;
	   	  muscle_eg_sync1.header.stamp= ros::Time::now();
	   	  muscle_egSynch_pub.publish(muscle_eg_sync1);

        }
private:
   ros::NodeHandle nh_;


   ros::Subscriber muscle_eg_sub_;
   ros::Publisher muscle_egSynch_pub;
};

///////////////////////////////////////////////////////////////////////
////////////////////////(       Main        )//////////////////////////
///////////////////////////////////////////////////////////////////////

int main(int argc, char **argv)
{
	ROS_INFO("Start ROS SYNCH node!");
    ros::init (argc, argv, "eg_filter");
    Node NH;
    ROS_INFO("Message Synchroniser Initialised!");

    while (ros::ok())
    {
        ros::spin();

    }
    ros::shutdown();
    return 0;
}




