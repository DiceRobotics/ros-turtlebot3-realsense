// Generated by gencpp from file object_msgs/Objects.msg
// DO NOT EDIT!


#ifndef OBJECT_MSGS_MESSAGE_OBJECTS_H
#define OBJECT_MSGS_MESSAGE_OBJECTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <object_msgs/Object.h>

namespace object_msgs
{
template <class ContainerAllocator>
struct Objects_
{
  typedef Objects_<ContainerAllocator> Type;

  Objects_()
    : header()
    , objects_vector()
    , inference_time_ms(0.0)  {
    }
  Objects_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , objects_vector(_alloc)
    , inference_time_ms(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::object_msgs::Object_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::object_msgs::Object_<ContainerAllocator> >::other >  _objects_vector_type;
  _objects_vector_type objects_vector;

   typedef float _inference_time_ms_type;
  _inference_time_ms_type inference_time_ms;





  typedef boost::shared_ptr< ::object_msgs::Objects_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_msgs::Objects_<ContainerAllocator> const> ConstPtr;

}; // struct Objects_

typedef ::object_msgs::Objects_<std::allocator<void> > Objects;

typedef boost::shared_ptr< ::object_msgs::Objects > ObjectsPtr;
typedef boost::shared_ptr< ::object_msgs::Objects const> ObjectsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_msgs::Objects_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_msgs::Objects_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace object_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'object_msgs': ['/home/awais/catkin_ws/src/object_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::object_msgs::Objects_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_msgs::Objects_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_msgs::Objects_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_msgs::Objects_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_msgs::Objects_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_msgs::Objects_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_msgs::Objects_<ContainerAllocator> >
{
  static const char* value()
  {
    return "491e959c05e1aac76496e491368f3ef1";
  }

  static const char* value(const ::object_msgs::Objects_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x491e959c05e1aac7ULL;
  static const uint64_t static_value2 = 0x6496e491368f3ef1ULL;
};

template<class ContainerAllocator>
struct DataType< ::object_msgs::Objects_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_msgs/Objects";
  }

  static const char* value(const ::object_msgs::Objects_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_msgs::Objects_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Copyright (c) 2017 Intel Corporation\n\
#\n\
# Licensed under the Apache License, Version 2.0 (the \"License\");\n\
# you may not use this file except in compliance with the License.\n\
# You may obtain a copy of the License at\n\
#\n\
#      http://www.apache.org/licenses/LICENSE-2.0\n\
#\n\
# Unless required by applicable law or agreed to in writing, software\n\
# distributed under the License is distributed on an \"AS IS\" BASIS,\n\
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
# See the License for the specific language governing permissions and\n\
# limitations under the License.\n\
\n\
# This message can represent objects detected in a frame\n\
std_msgs/Header header    # timestamp in header is the time the sensor captured the raw data\n\
Object[] objects_vector   # Object array\n\
float32 inference_time_ms # inference time of this frame. the unit is millisecond.\n\
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
\n\
================================================================================\n\
MSG: object_msgs/Object\n\
# Copyright (c) 2017 Intel Corporation\n\
#\n\
# Licensed under the Apache License, Version 2.0 (the \"License\");\n\
# you may not use this file except in compliance with the License.\n\
# You may obtain a copy of the License at\n\
#\n\
#      http://www.apache.org/licenses/LICENSE-2.0\n\
#\n\
# Unless required by applicable law or agreed to in writing, software\n\
# distributed under the License is distributed on an \"AS IS\" BASIS,\n\
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
# See the License for the specific language governing permissions and\n\
# limitations under the License.\n\
\n\
# This message define the property of detected object\n\
string object_name  # object name\n\
float32 probability # probability of detected object\n\
";
  }

  static const char* value(const ::object_msgs::Objects_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_msgs::Objects_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.objects_vector);
      stream.next(m.inference_time_ms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Objects_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_msgs::Objects_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_msgs::Objects_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "objects_vector[]" << std::endl;
    for (size_t i = 0; i < v.objects_vector.size(); ++i)
    {
      s << indent << "  objects_vector[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::object_msgs::Object_<ContainerAllocator> >::stream(s, indent + "    ", v.objects_vector[i]);
    }
    s << indent << "inference_time_ms: ";
    Printer<float>::stream(s, indent + "  ", v.inference_time_ms);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_MSGS_MESSAGE_OBJECTS_H