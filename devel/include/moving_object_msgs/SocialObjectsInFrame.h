// Generated by gencpp from file moving_object_msgs/SocialObjectsInFrame.msg
// DO NOT EDIT!


#ifndef MOVING_OBJECT_MSGS_MESSAGE_SOCIALOBJECTSINFRAME_H
#define MOVING_OBJECT_MSGS_MESSAGE_SOCIALOBJECTSINFRAME_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <moving_object_msgs/SocialObject.h>

namespace moving_object_msgs
{
template <class ContainerAllocator>
struct SocialObjectsInFrame_
{
  typedef SocialObjectsInFrame_<ContainerAllocator> Type;

  SocialObjectsInFrame_()
    : header()
    , objects()  {
    }
  SocialObjectsInFrame_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , objects(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::moving_object_msgs::SocialObject_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::moving_object_msgs::SocialObject_<ContainerAllocator> >::other >  _objects_type;
  _objects_type objects;





  typedef boost::shared_ptr< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> const> ConstPtr;

}; // struct SocialObjectsInFrame_

typedef ::moving_object_msgs::SocialObjectsInFrame_<std::allocator<void> > SocialObjectsInFrame;

typedef boost::shared_ptr< ::moving_object_msgs::SocialObjectsInFrame > SocialObjectsInFramePtr;
typedef boost::shared_ptr< ::moving_object_msgs::SocialObjectsInFrame const> SocialObjectsInFrameConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moving_object_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'moving_object_msgs': ['/home/awais/catkin_ws/src/ros_moving_object/moving_object_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f3d11bf129e2f4382ed37179e39d8777";
  }

  static const char* value(const ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf3d11bf129e2f438ULL;
  static const uint64_t static_value2 = 0x2ed37179e39d8777ULL;
};

template<class ContainerAllocator>
struct DataType< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moving_object_msgs/SocialObjectsInFrame";
  }

  static const char* value(const ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
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
Header header\n\
moving_object_msgs/SocialObject[] objects\n\
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
MSG: moving_object_msgs/SocialObject\n\
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
int32               id            # Object ID\n\
string              name          # Object Type\n\
geometry_msgs/Point position      # 3D coordinates info of the center position of the object\n\
geometry_msgs/Point velocity      # the velocity of the object moving. Unit: m/s\n\
float64             reliability   # The detection probability. \n\
string[]            tagnames\n\
string[]            tags\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SocialObjectsInFrame_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moving_object_msgs::SocialObjectsInFrame_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "objects[]" << std::endl;
    for (size_t i = 0; i < v.objects.size(); ++i)
    {
      s << indent << "  objects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::moving_object_msgs::SocialObject_<ContainerAllocator> >::stream(s, indent + "    ", v.objects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVING_OBJECT_MSGS_MESSAGE_SOCIALOBJECTSINFRAME_H
