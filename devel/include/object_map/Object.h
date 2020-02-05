// Generated by gencpp from file object_map/Object.msg
// DO NOT EDIT!


#ifndef OBJECT_MAP_MESSAGE_OBJECT_H
#define OBJECT_MAP_MESSAGE_OBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Point32.h>

namespace object_map
{
template <class ContainerAllocator>
struct Object_
{
  typedef Object_<ContainerAllocator> Type;

  Object_()
    : id(0)
    , name()
    , probability(0.0)
    , min_point()
    , max_point()  {
    }
  Object_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , probability(0.0)
    , min_point(_alloc)
    , max_point(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef float _probability_type;
  _probability_type probability;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _min_point_type;
  _min_point_type min_point;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _max_point_type;
  _max_point_type max_point;





  typedef boost::shared_ptr< ::object_map::Object_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_map::Object_<ContainerAllocator> const> ConstPtr;

}; // struct Object_

typedef ::object_map::Object_<std::allocator<void> > Object;

typedef boost::shared_ptr< ::object_map::Object > ObjectPtr;
typedef boost::shared_ptr< ::object_map::Object const> ObjectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_map::Object_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_map::Object_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace object_map

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'object_map': ['/home/awais/catkin_ws/src/ros_object_map/object_map/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::object_map::Object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_map::Object_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_map::Object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_map::Object_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_map::Object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_map::Object_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_map::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "12ac37f35f272c1d2e0084c1be4dcb44";
  }

  static const char* value(const ::object_map::Object_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x12ac37f35f272c1dULL;
  static const uint64_t static_value2 = 0x2e0084c1be4dcb44ULL;
};

template<class ContainerAllocator>
struct DataType< ::object_map::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_map/Object";
  }

  static const char* value(const ::object_map::Object_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_map::Object_<ContainerAllocator> >
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
uint32 id\n\
string name\n\
float32 probability \n\
geometry_msgs/Point32 min_point\n\
geometry_msgs/Point32 max_point\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::object_map::Object_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_map::Object_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.probability);
      stream.next(m.min_point);
      stream.next(m.max_point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Object_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_map::Object_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_map::Object_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "probability: ";
    Printer<float>::stream(s, indent + "  ", v.probability);
    s << indent << "min_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.min_point);
    s << indent << "max_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.max_point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_MAP_MESSAGE_OBJECT_H
