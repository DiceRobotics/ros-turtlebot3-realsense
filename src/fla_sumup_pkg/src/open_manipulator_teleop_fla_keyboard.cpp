/* Authors: Darby Lim, Hye-Jong KIM, Ryan Shim, Yong-Ho Na */
/* Editor: M. Awais Arshad */

#include "ros/ros.h"
#include "fla_sumup_pkg/open_manipulator_teleop_fla_keyboard.h"
#include "fla_sumup_pkg/MsgTutorial.h"
#include "object_map/Objects.h"
#include "object_map/Object.h"

OpenManipulatorTeleop::OpenManipulatorTeleop()
    :node_handle_(""),
     priv_node_handle_("~")
{
  present_joint_angle_.resize(NUM_OF_JOINT);
  present_kinematic_position_.resize(3);
  cmd_joint_angle_.resize(NUM_OF_JOINT);
  initClient();
  initSubscriber();

  ROS_INFO("OpenManipulator initialization");
}

OpenManipulatorTeleop::~OpenManipulatorTeleop()
{
  if(ros::isStarted()) {
    ros::shutdown(); // explicitly needed since we use ros::start();
    ros::waitForShutdown();
  }
}

void OpenManipulatorTeleop::filteredObjectCallback(const object_map::Objects::ConstPtr& msg)
{
  std::vector<double> temp_angle;
  temp_angle.resize(NUM_OF_JOINT);

  ROS_INFO("Pointing Update");
  ROS_INFO("header.seq = %d", msg->header.seq);
//  ROS_INFO("header.stamp.sec = %d", msg->header.stamp.sec);
//  ROS_INFO("header.stamp.nsec = %d", msg->header.stamp.nsec);
//  ROS_INFO("TEST = %f", msg->Objects[0].min_point.x)
  double min_x = (double) msg->Objects[0].min_point.x;
  double min_y = (double) msg->Objects[0].min_point.y;
//  double min_z = (double) msg->Objects[0].min_point.z;
  double max_x = (double) msg->Objects[0].max_point.x;
  double max_y = (double) msg->Objects[0].max_point.y;
//  double max_z = (double) msg->Objects[0].max_point.z;
  double rq_az = -(min_x + max_x) / 2;
  double rq_el = (min_y + max_y) / 2;
  ROS_INFO("Required Azimuth:   = %f", rq_az);
  ROS_INFO("Required Elevation: = %f", rq_el);
  temp_angle.at(0) = -(min_x + max_x) / 2;//0;
  temp_angle.at(1) = -0.5;
  temp_angle.at(2) = 0.4;
  temp_angle.at(3) = (min_y + max_y) / 2;
  cmd_joint_angle_ = temp_angle;

}


void OpenManipulatorTeleop::initClient()
{
  goal_joint_space_path_client_ = node_handle_.serviceClient<open_manipulator_msgs::SetJointPosition>("goal_joint_space_path");
}

void OpenManipulatorTeleop::initSubscriber()
{
//  joint_states_sub_ = node_handle_.subscribe("joint_states", 10, &OpenManipulatorTeleop::jointStatesCallback, this);
//  kinematics_pose_sub_ = node_handle_.subscribe("kinematics_pose", 10, &OpenManipulatorTeleop::kinematicsPoseCallback, this);
  fla_topic_sub_ = node_handle_.subscribe("/object_map/filtered_object", 100, &OpenManipulatorTeleop::filteredObjectCallback, this);
}

/*
void OpenManipulatorTeleop::jointStatesCallback(const sensor_msgs::JointState::ConstPtr &msg)
{
  std::vector<double> temp_angle;
  temp_angle.resize(NUM_OF_JOINT);
  for(std::vector<int>::size_type i = 0; i < msg->name.size(); i ++)
  {
    if(!msg->name.at(i).compare("joint1"))  temp_angle.at(0) = (msg->position.at(i));
    else if(!msg->name.at(i).compare("joint2"))  temp_angle.at(1) = (msg->position.at(i));
    else if(!msg->name.at(i).compare("joint3"))  temp_angle.at(2) = (msg->position.at(i));
    else if(!msg->name.at(i).compare("joint4"))  temp_angle.at(3) = (msg->position.at(i));
  }
  present_joint_angle_ = temp_angle;

}
*/


bool OpenManipulatorTeleop::setJointSpacePath(std::vector<std::string> joint_name, std::vector<double> joint_angle, double path_time)
{
  open_manipulator_msgs::SetJointPosition srv;
  srv.request.joint_position.joint_name = joint_name;
  srv.request.joint_position.position = joint_angle;
  srv.request.path_time = path_time;

  if(goal_joint_space_path_client_.call(srv))
  {
    return srv.response.is_planned;
  }
  return false;
}
void OpenManipulatorTeleop::setGoal(char ch)
{
  std::vector<double> goalJoint; goalJoint.resize(4, 0.0);

  if(ch == '2')
  {
    printf("input : 2 \thome pose\n");
    std::vector<std::string> joint_name;
    std::vector<double> joint_angle;
    double path_time = 0.75;

    joint_name.push_back("joint1"); joint_angle.push_back(0.0);
    joint_name.push_back("joint2"); joint_angle.push_back(-1.05);
    joint_name.push_back("joint3"); joint_angle.push_back(0.35);
    joint_name.push_back("joint4"); joint_angle.push_back(0.70);
    setJointSpacePath(joint_name, joint_angle, path_time);
  }
  else
  {
    printf("Lane Alignment Mode\n");

    std::vector<std::string> joint_name;
    std::vector<double> joint_angle;
    double path_time = 0.75;
    joint_name.push_back("joint1"); joint_angle.push_back(cmd_joint_angle_.at(0));//0.0);
    joint_name.push_back("joint2"); joint_angle.push_back(cmd_joint_angle_.at(1));//-0.5);
    joint_name.push_back("joint3"); joint_angle.push_back(cmd_joint_angle_.at(2));//0.4);
    joint_name.push_back("joint4"); joint_angle.push_back(cmd_joint_angle_.at(3));//0.0);
    setJointSpacePath(joint_name, joint_angle, path_time);
  }
}

void OpenManipulatorTeleop::restoreTerminalSettings(void)
{
    tcsetattr(0, TCSANOW, &oldt_);  /* Apply saved settings */
}

void OpenManipulatorTeleop::disableWaitingForEnter(void)
{
  struct termios newt;

  tcgetattr(0, &oldt_);  /* Save terminal settings */
  newt = oldt_;  /* Init new settings */
  newt.c_lflag &= ~(ICANON | ECHO);  /* Change settings */
  tcsetattr(0, TCSANOW, &newt);  /* Apply settings */
}



int main(int argc, char **argv)
{
  // Init ROS node
  ros::init(argc, argv, "open_manipulator_teleop");

  OpenManipulatorTeleop openManipulatorTeleop;

  ROS_INFO("OpenManipulator teleoperation using keyboard start");
  openManipulatorTeleop.disableWaitingForEnter();

//  ros::spinOnce();
//  openManipulatorTeleop.printText();

  char ch;
  while (ros::ok() && (ch = std::getchar()) != 'q')
  {
//    ros::spinOnce();
//    openManipulatorTeleop.printText();
    ros::spinOnce();
//    ROS_INFO("Sending Service Command");
    openManipulatorTeleop.setGoal(ch);
  }

  printf("input : q \tTeleop. is finished\n");
  openManipulatorTeleop.restoreTerminalSettings();
  ros::spin();
  return 0;
}

