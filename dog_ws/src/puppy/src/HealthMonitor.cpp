#include "ros/ros.h"
#include "puppy/PuppyHealth.h"

void subscribeCB(const puppy::PuppyHealth& msg)
{
	ROS_INFO("I heard: A [%d] age puppy [%s] health is [%d]", msg.age, msg.name.c_str(), msg.health);
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "HealthMonitor");
	ros::NodeHandle n;
	
	ros::Subscriber health_mon = n.subscribe("/puppy/health", 10, subscribeCB);

	ros::spin();
	
	return 0;
}
