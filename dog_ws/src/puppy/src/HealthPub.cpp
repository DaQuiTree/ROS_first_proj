#include "ros/ros.h"
#include "puppy/PuppyHealth.h"

int main(int argc, char **argv)
{
	ros::init(argc, argv, "HealthPub");
	ros::NodeHandle n;
	
	ros::Publisher health_pub = n.advertise<puppy::PuppyHealth>("/puppy/health", 10);

	//set rate 1HZ
	ros::Rate loop_rate(1);

	unsigned char count = 100;
	while(ros::ok())
	{
		puppy::PuppyHealth puph;
	
		puph.name = "cola";
		puph.age = 8;
		puph.health = count;
		
		ROS_INFO("Publish msg: puppy:%s age:%d health%d", puph.name.c_str(), puph.age, puph.health);
		
		health_pub.publish(puph);
		
		ros::spinOnce();

		if(--count <= 60) count = 100;

		loop_rate.sleep();
	}

	return 0;
}
