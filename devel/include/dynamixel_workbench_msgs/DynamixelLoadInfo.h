// Generated by gencpp from file dynamixel_workbench_msgs/DynamixelLoadInfo.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_DYNAMIXELLOADINFO_H
#define DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_DYNAMIXELLOADINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dynamixel_workbench_msgs
{
template <class ContainerAllocator>
struct DynamixelLoadInfo_
{
  typedef DynamixelLoadInfo_<ContainerAllocator> Type;

  DynamixelLoadInfo_()
    : device_name()
    , baud_rate(0)
    , protocol_version(0.0)  {
    }
  DynamixelLoadInfo_(const ContainerAllocator& _alloc)
    : device_name(_alloc)
    , baud_rate(0)
    , protocol_version(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _device_name_type;
  _device_name_type device_name;

   typedef uint64_t _baud_rate_type;
  _baud_rate_type baud_rate;

   typedef float _protocol_version_type;
  _protocol_version_type protocol_version;





  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> const> ConstPtr;

}; // struct DynamixelLoadInfo_

typedef ::dynamixel_workbench_msgs::DynamixelLoadInfo_<std::allocator<void> > DynamixelLoadInfo;

typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelLoadInfo > DynamixelLoadInfoPtr;
typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelLoadInfo const> DynamixelLoadInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dynamixel_workbench_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dynamixel_workbench_msgs': ['/home/awais/catkin_ws/src/Dynamixel-workbench-msgs/dynamixel_workbench_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af24d77e0b8329be8d17a782ba80f5e2";
  }

  static const char* value(const ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf24d77e0b8329beULL;
  static const uint64_t static_value2 = 0x8d17a782ba80f5e2ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_workbench_msgs/DynamixelLoadInfo";
  }

  static const char* value(const ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message includes dynamixel's load information\n\
\n\
string device_name\n\
uint64 baud_rate\n\
float32 protocol_version\n\
";
  }

  static const char* value(const ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.device_name);
      stream.next(m.baud_rate);
      stream.next(m.protocol_version);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamixelLoadInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_workbench_msgs::DynamixelLoadInfo_<ContainerAllocator>& v)
  {
    s << indent << "device_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.device_name);
    s << indent << "baud_rate: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.baud_rate);
    s << indent << "protocol_version: ";
    Printer<float>::stream(s, indent + "  ", v.protocol_version);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_DYNAMIXELLOADINFO_H
