#include "ros/ros.h"
#include "puppy/HumanActions.h"
#include <cstdlib>

bool ActionEvalCB(puppy::HumanActions::Request &req, puppy::HumanActions::Response &res)
{
	ROS_INFO("Get params action:%s value:%d health:%d", req.action.c_str(), req.value, req.health_input);

	if(!strcmp(req.action.c_str(), "feed"))
	{
		res.health_output = req.health_input + req.value;
	}else if(!strcmp(req.action.c_str(), "warm")){
		res.health_output = req.health_input + req.value/3;
	}else{
		res.health_output = req.health_input;
	}

	if(res.health_output > 100)
		res.health_output = 100;
	else if(res.health_output < 60)
		res.health_output = 60; 

	ROS_INFO("sending back response health: %d", res.health_output);

	return true;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "ActionServer");

	ros::NodeHandle n;
	
	ros::ServiceServer service = n.advertiseService("ActionEval", ActionEvalCB);

	ROS_INFO("Ready to evaluate...");
	
	ros::spin();

	return 0;
}
