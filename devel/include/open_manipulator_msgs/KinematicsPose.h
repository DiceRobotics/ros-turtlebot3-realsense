// Generated by gencpp from file open_manipulator_msgs/KinematicsPose.msg
// DO NOT EDIT!


#ifndef OPEN_MANIPULATOR_MSGS_MESSAGE_KINEMATICSPOSE_H
#define OPEN_MANIPULATOR_MSGS_MESSAGE_KINEMATICSPOSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace open_manipulator_msgs
{
template <class ContainerAllocator>
struct KinematicsPose_
{
  typedef KinematicsPose_<ContainerAllocator> Type;

  KinematicsPose_()
    : pose()
    , max_accelerations_scaling_factor(0.0)
    , max_velocity_scaling_factor(0.0)
    , tolerance(0.0)  {
    }
  KinematicsPose_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , max_accelerations_scaling_factor(0.0)
    , max_velocity_scaling_factor(0.0)
    , tolerance(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef double _max_accelerations_scaling_factor_type;
  _max_accelerations_scaling_factor_type max_accelerations_scaling_factor;

   typedef double _max_velocity_scaling_factor_type;
  _max_velocity_scaling_factor_type max_velocity_scaling_factor;

   typedef double _tolerance_type;
  _tolerance_type tolerance;





  typedef boost::shared_ptr< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> const> ConstPtr;

}; // struct KinematicsPose_

typedef ::open_manipulator_msgs::KinematicsPose_<std::allocator<void> > KinematicsPose;

typedef boost::shared_ptr< ::open_manipulator_msgs::KinematicsPose > KinematicsPosePtr;
typedef boost::shared_ptr< ::open_manipulator_msgs::KinematicsPose const> KinematicsPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace open_manipulator_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'open_manipulator_msgs': ['/home/awais/catkin_ws/src/open_manipulator_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bad8d5def2efabb0336490f8e9f6f2e2";
  }

  static const char* value(const ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbad8d5def2efabb0ULL;
  static const uint64_t static_value2 = 0x336490f8e9f6f2e2ULL;
};

template<class ContainerAllocator>
struct DataType< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "open_manipulator_msgs/KinematicsPose";
  }

  static const char* value(const ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose  pose\n\
float64    max_accelerations_scaling_factor\n\
float64    max_velocity_scaling_factor\n\
float64    tolerance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.max_accelerations_scaling_factor);
      stream.next(m.max_velocity_scaling_factor);
      stream.next(m.tolerance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KinematicsPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "max_accelerations_scaling_factor: ";
    Printer<double>::stream(s, indent + "  ", v.max_accelerations_scaling_factor);
    s << indent << "max_velocity_scaling_factor: ";
    Printer<double>::stream(s, indent + "  ", v.max_velocity_scaling_factor);
    s << indent << "tolerance: ";
    Printer<double>::stream(s, indent + "  ", v.tolerance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPEN_MANIPULATOR_MSGS_MESSAGE_KINEMATICSPOSE_H
