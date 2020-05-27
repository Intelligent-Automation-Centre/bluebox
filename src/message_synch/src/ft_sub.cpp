#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/WrenchStamped.h>

void chatterCallback(const geometry_msgs::WrenchStampedConstPtr& msg)
{
  ROS_INFO("Message recieved");
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "listener");


  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("/ft_sensor/netft_data", 1000, chatterCallback);

  ros::spin();

  return 0;
}
