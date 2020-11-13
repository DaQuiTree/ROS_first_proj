#include "ros/ros.h"
#include "puppy/PuppyHealth.h"
#include "puppy/HumanActions.h"
#include <cstdlib>

unsigned char curHealth = 0;

void subscribeCB(const puppy::PuppyHealth& msg)
{
	ROS_INFO("I heard: A [%d] age puppy [%s] health is [%d]", msg.age, msg.name.c_str(), msg.health);
	curHealth = msg.health;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "ActionClient");

	if(argc != 3)
	{
		ROS_ERROR("usage: HumanActionSimClient [feed|warm] [value]");
		return 1;
	}

	ros::NodeHandle n;
	
	//get info
	ros::Subscriber sub = n.subscribe("/puppy/health", 10,  subscribeCB);

	ros::Duration(1.1).sleep();
	
	ros::spinOnce();

	//send request
	ros::ServiceClient client = n.serviceClient<puppy::HumanActions>("ActionEval");
	
	puppy::HumanActions service;

	service.request.action = argv[1];
	service.request.value = atol(argv[2]);
	service.request.health_input = curHealth;
	
	if(client.call(service))
        {
        	ROS_INFO("Health after action [%s] is [%d]", service.request.action.c_str(), service.response.health_output);
	}else{
 		ROS_ERROR("Failed to call service ActionEval");
		return 1;
	}

        return 0;
}
