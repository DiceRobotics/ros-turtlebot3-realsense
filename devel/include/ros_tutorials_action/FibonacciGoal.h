// Generated by gencpp from file ros_tutorials_action/FibonacciGoal.msg
// DO NOT EDIT!


#ifndef ROS_TUTORIALS_ACTION_MESSAGE_FIBONACCIGOAL_H
#define ROS_TUTORIALS_ACTION_MESSAGE_FIBONACCIGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_tutorials_action
{
template <class ContainerAllocator>
struct FibonacciGoal_
{
  typedef FibonacciGoal_<ContainerAllocator> Type;

  FibonacciGoal_()
    : order(0)  {
    }
  FibonacciGoal_(const ContainerAllocator& _alloc)
    : order(0)  {
  (void)_alloc;
    }



   typedef int32_t _order_type;
  _order_type order;





  typedef boost::shared_ptr< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> const> ConstPtr;

}; // struct FibonacciGoal_

typedef ::ros_tutorials_action::FibonacciGoal_<std::allocator<void> > FibonacciGoal;

typedef boost::shared_ptr< ::ros_tutorials_action::FibonacciGoal > FibonacciGoalPtr;
typedef boost::shared_ptr< ::ros_tutorials_action::FibonacciGoal const> FibonacciGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_tutorials_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ros_tutorials_action': ['/home/awais/catkin_ws/devel/share/ros_tutorials_action/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6889063349a00b249bd1661df429d822";
  }

  static const char* value(const ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6889063349a00b24ULL;
  static const uint64_t static_value2 = 0x9bd1661df429d822ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_tutorials_action/FibonacciGoal";
  }

  static const char* value(const ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
int32 order\n\
";
  }

  static const char* value(const ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.order);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FibonacciGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_tutorials_action::FibonacciGoal_<ContainerAllocator>& v)
  {
    s << indent << "order: ";
    Printer<int32_t>::stream(s, indent + "  ", v.order);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_TUTORIALS_ACTION_MESSAGE_FIBONACCIGOAL_H
