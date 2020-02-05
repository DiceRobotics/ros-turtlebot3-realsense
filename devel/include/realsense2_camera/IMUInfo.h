// Generated by gencpp from file realsense2_camera/IMUInfo.msg
// DO NOT EDIT!


#ifndef REALSENSE2_CAMERA_MESSAGE_IMUINFO_H
#define REALSENSE2_CAMERA_MESSAGE_IMUINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace realsense2_camera
{
template <class ContainerAllocator>
struct IMUInfo_
{
  typedef IMUInfo_<ContainerAllocator> Type;

  IMUInfo_()
    : header()
    , data()
    , noise_variances()
    , bias_variances()  {
      data.assign(0.0);

      noise_variances.assign(0.0);

      bias_variances.assign(0.0);
  }
  IMUInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data()
    , noise_variances()
    , bias_variances()  {
  (void)_alloc;
      data.assign(0.0);

      noise_variances.assign(0.0);

      bias_variances.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<double, 12>  _data_type;
  _data_type data;

   typedef boost::array<double, 3>  _noise_variances_type;
  _noise_variances_type noise_variances;

   typedef boost::array<double, 3>  _bias_variances_type;
  _bias_variances_type bias_variances;





  typedef boost::shared_ptr< ::realsense2_camera::IMUInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense2_camera::IMUInfo_<ContainerAllocator> const> ConstPtr;

}; // struct IMUInfo_

typedef ::realsense2_camera::IMUInfo_<std::allocator<void> > IMUInfo;

typedef boost::shared_ptr< ::realsense2_camera::IMUInfo > IMUInfoPtr;
typedef boost::shared_ptr< ::realsense2_camera::IMUInfo const> IMUInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense2_camera::IMUInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense2_camera::IMUInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace realsense2_camera

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'realsense2_camera': ['/home/awais/catkin_ws/src/realsense/realsense2_camera/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense2_camera::IMUInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense2_camera::IMUInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense2_camera::IMUInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b8a77fbb6e4146ae79c8a943413e4f62";
  }

  static const char* value(const ::realsense2_camera::IMUInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb8a77fbb6e4146aeULL;
  static const uint64_t static_value2 = 0x79c8a943413e4f62ULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense2_camera/IMUInfo";
  }

  static const char* value(const ::realsense2_camera::IMUInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# header.frame_id is either set to \"imu_accel\" or \"imu_gyro\"\n\
# to distinguish between \"accel\" and \"gyro\" info.\n\
std_msgs/Header header\n\
float64[12] data\n\
float64[3] noise_variances\n\
float64[3] bias_variances\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::realsense2_camera::IMUInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
      stream.next(m.noise_variances);
      stream.next(m.bias_variances);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IMUInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense2_camera::IMUInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "noise_variances[]" << std::endl;
    for (size_t i = 0; i < v.noise_variances.size(); ++i)
    {
      s << indent << "  noise_variances[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.noise_variances[i]);
    }
    s << indent << "bias_variances[]" << std::endl;
    for (size_t i = 0; i < v.bias_variances.size(); ++i)
    {
      s << indent << "  bias_variances[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.bias_variances[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE2_CAMERA_MESSAGE_IMUINFO_H
