// ROS Default Header File
#include "ros/ros.h"
// MsgTutorial Message File Header
// The header file is automatically created when building the package.
#include "fla_sumup_pkg/MsgTutorial.h"
#include "object_map/Objects.h"
#include "object_map/Object.h"
// Message callback function. This is a function is called when a topic
// message named 'ros_tutorial_msg' is received. As an input message,
// the 'MsgTutorial' message of the 'ros_tutorials_topic' package is received.

//void msgCallback(const fla_sumup_pkg::MsgTutorial::ConstPtr& msg)
//void msgCallback(const object_analytics_msgs::ObjectsInBoxes3D::ConstPtr& msg)
//void msgCallback(const object_map::Objects::ConstPtr& msg)
void msgCallback(const object_map::Objects::ConstPtr& msg)
{
ROS_INFO("I am in msgCallback Function");
ROS_INFO("header.seq = %d", msg->header.seq);
//ROS_INFO("header.stamp.sec = %d", msg->header.stamp.sec);
//ROS_INFO("header.stamp.nsec = %d", msg->header.stamp.nsec);
int length = 100;
length = sizeof(msg->Objects);// / sizeof(Objects[0]);
//double arrr[10]
//double n;
ROS_INFO("Size of Array is %d", length);

if (msg->Objects[0].probability == 1)
{
ROS_INFO("Inside IFFFFFFFFFFFFFFF Statement");
//ROS_INFO("Object[].id = %d", msg->Objects[0].id);
//ROS_INFO("Objects.name = %s", msg->Objects[0].name);
//ROS_INFO("Objects.probability = %f", msg->Objects[0].probability);
//ROS_INFO("Objects[0].min_point.x = %f", msg->Objects[0].min_point.x);
//ROS_INFO("Objects[0].min_point.y = %f", msg->Objects[0].min_point.y);
//ROS_INFO("Objects[0].min_point.z = %f", msg->Objects[0].min_point.z);
//ROS_INFO("Objects[0].max_point.x = %f", msg->Objects[0].max_point.x);
//ROS_INFO("Objects[0].max_point.y = %f", msg->Objects[0].max_point.y);
//ROS_INFO("Objects[0].max_point.z = %f", msg->Objects[0].max_point.z);
}
/*
double min_x=0;
double min_y=0;
double min_z=0;
double max_x=0;
double max_y=0;
double max_z=0;
double Az = 0;
double El = 0;
double Rg = 0;
float prob = msg->Objects[0].probability;
if (prob > 0.7)
{
	min_x = (double) msg->Objects[0].min_point.x;
	min_y = (double) msg->Objects[0].min_point.y;
	min_z = (double) msg->Objects[0].min_point.z;
	max_x = (double) msg->Objects[0].max_point.x;
	max_y = (double) msg->Objects[0].max_point.y;
	max_z = (double) msg->Objects[0].max_point.z;
	Az = (min_x + max_x) / 2;
	El = (min_y + max_y) / 2;
	Rg = (min_z + max_z) / 2;
//	ROS_INFO("Objects[0].min_point.z = %f", min_z);
//	ROS_INFO("Objects[0].max_point.x = %f", max_x);
//	ROS_INFO("Objects[0].max_point.y = %f", max_y);
//	ROS_INFO("Objects[0].max_point.z = %f", max_z);
}
ROS_INFO("Objects.probability = %f", prob);
ROS_INFO("Azimuth = %f", Az);
ROS_INFO("Elevation = %f", El);
ROS_INFO("Range = %f", Rg);
*/
}

int main(int argc, char **argv)			
// Node Main Function
{
ros::init(argc, argv, "fla_topic_subscriber_node"); 	
ros::NodeHandle nh; 	
ros::Subscriber fla_topic_subscriber = nh.subscribe("/object_map/filtered_object", 100, msgCallback);
ros::spin();
return 0;

}
