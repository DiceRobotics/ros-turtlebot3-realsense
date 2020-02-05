// Generated by gencpp from file moving_object_msgs/SocialObject.msg
// DO NOT EDIT!


#ifndef MOVING_OBJECT_MSGS_MESSAGE_SOCIALOBJECT_H
#define MOVING_OBJECT_MSGS_MESSAGE_SOCIALOBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace moving_object_msgs
{
template <class ContainerAllocator>
struct SocialObject_
{
  typedef SocialObject_<ContainerAllocator> Type;

  SocialObject_()
    : id(0)
    , name()
    , position()
    , velocity()
    , reliability(0.0)
    , tagnames()
    , tags()  {
    }
  SocialObject_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , position(_alloc)
    , velocity(_alloc)
    , reliability(0.0)
    , tagnames(_alloc)
    , tags(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef double _reliability_type;
  _reliability_type reliability;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _tagnames_type;
  _tagnames_type tagnames;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _tags_type;
  _tags_type tags;





  typedef boost::shared_ptr< ::moving_object_msgs::SocialObject_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moving_object_msgs::SocialObject_<ContainerAllocator> const> ConstPtr;

}; // struct SocialObject_

typedef ::moving_object_msgs::SocialObject_<std::allocator<void> > SocialObject;

typedef boost::shared_ptr< ::moving_object_msgs::SocialObject > SocialObjectPtr;
typedef boost::shared_ptr< ::moving_object_msgs::SocialObject const> SocialObjectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moving_object_msgs::SocialObject_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moving_object_msgs::SocialObject_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moving_object_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'moving_object_msgs': ['/home/awais/catkin_ws/src/ros_moving_object/moving_object_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moving_object_msgs::SocialObject_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_object_msgs::SocialObject_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_object_msgs::SocialObject_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aa604aba50f59d0fd547bd74d7c34114";
  }

  static const char* value(const ::moving_object_msgs::SocialObject_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaa604aba50f59d0fULL;
  static const uint64_t static_value2 = 0xd547bd74d7c34114ULL;
};

template<class ContainerAllocator>
struct DataType< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moving_object_msgs/SocialObject";
  }

  static const char* value(const ::moving_object_msgs::SocialObject_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
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

  static const char* value(const ::moving_object_msgs::SocialObject_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.reliability);
      stream.next(m.tagnames);
      stream.next(m.tags);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SocialObject_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moving_object_msgs::SocialObject_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moving_object_msgs::SocialObject_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "reliability: ";
    Printer<double>::stream(s, indent + "  ", v.reliability);
    s << indent << "tagnames[]" << std::endl;
    for (size_t i = 0; i < v.tagnames.size(); ++i)
    {
      s << indent << "  tagnames[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.tagnames[i]);
    }
    s << indent << "tags[]" << std::endl;
    for (size_t i = 0; i < v.tags.size(); ++i)
    {
      s << indent << "  tags[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.tags[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVING_OBJECT_MSGS_MESSAGE_SOCIALOBJECT_H
