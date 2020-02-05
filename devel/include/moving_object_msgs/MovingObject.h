// Generated by gencpp from file moving_object_msgs/MovingObject.msg
// DO NOT EDIT!


#ifndef MOVING_OBJECT_MSGS_MESSAGE_MOVINGOBJECT_H
#define MOVING_OBJECT_MSGS_MESSAGE_MOVINGOBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/RegionOfInterest.h>
#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Point.h>

namespace moving_object_msgs
{
template <class ContainerAllocator>
struct MovingObject_
{
  typedef MovingObject_<ContainerAllocator> Type;

  MovingObject_()
    : id(0)
    , type()
    , probability(0.0)
    , roi()
    , min()
    , max()
    , velocity()  {
    }
  MovingObject_(const ContainerAllocator& _alloc)
    : id(0)
    , type(_alloc)
    , probability(0.0)
    , roi(_alloc)
    , min(_alloc)
    , max(_alloc)
    , velocity(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef float _probability_type;
  _probability_type probability;

   typedef  ::sensor_msgs::RegionOfInterest_<ContainerAllocator>  _roi_type;
  _roi_type roi;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _min_type;
  _min_type min;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _max_type;
  _max_type max;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;





  typedef boost::shared_ptr< ::moving_object_msgs::MovingObject_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moving_object_msgs::MovingObject_<ContainerAllocator> const> ConstPtr;

}; // struct MovingObject_

typedef ::moving_object_msgs::MovingObject_<std::allocator<void> > MovingObject;

typedef boost::shared_ptr< ::moving_object_msgs::MovingObject > MovingObjectPtr;
typedef boost::shared_ptr< ::moving_object_msgs::MovingObject const> MovingObjectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moving_object_msgs::MovingObject_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moving_object_msgs::MovingObject_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moving_object_msgs::MovingObject_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_object_msgs::MovingObject_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_object_msgs::MovingObject_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cabc63dcb76cee6ba7670da10556e256";
  }

  static const char* value(const ::moving_object_msgs::MovingObject_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcabc63dcb76cee6bULL;
  static const uint64_t static_value2 = 0xa7670da10556e256ULL;
};

template<class ContainerAllocator>
struct DataType< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moving_object_msgs/MovingObject";
  }

  static const char* value(const ::moving_object_msgs::MovingObject_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
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
int32 id                           # Object ID\n\
string type                        # The object type detected in this roi\n\
float32 probability                # The detection probability of object in this roi\n\
sensor_msgs/RegionOfInterest roi   # region of interest\n\
geometry_msgs/Point32 min          # min and max locate the diagonal of a bounding-box of the detected object whose\n\
geometry_msgs/Point32 max          # x, y and z axis parellel to the axises correspondingly in camera coordinates\n\
geometry_msgs/Point   velocity     # The velocity with which the roi moves.\n\
================================================================================\n\
MSG: sensor_msgs/RegionOfInterest\n\
# This message is used to specify a region of interest within an image.\n\
#\n\
# When used to specify the ROI setting of the camera when the image was\n\
# taken, the height and width fields should either match the height and\n\
# width fields for the associated image; or height = width = 0\n\
# indicates that the full resolution image was captured.\n\
\n\
uint32 x_offset  # Leftmost pixel of the ROI\n\
                 # (0 if the ROI includes the left edge of the image)\n\
uint32 y_offset  # Topmost pixel of the ROI\n\
                 # (0 if the ROI includes the top edge of the image)\n\
uint32 height    # Height of ROI\n\
uint32 width     # Width of ROI\n\
\n\
# True if a distinct rectified ROI should be calculated from the \"raw\"\n\
# ROI in this message. Typically this should be False if the full image\n\
# is captured (ROI not used), and True if a subwindow is captured (ROI\n\
# used).\n\
bool do_rectify\n\
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
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::moving_object_msgs::MovingObject_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.type);
      stream.next(m.probability);
      stream.next(m.roi);
      stream.next(m.min);
      stream.next(m.max);
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MovingObject_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moving_object_msgs::MovingObject_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moving_object_msgs::MovingObject_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "probability: ";
    Printer<float>::stream(s, indent + "  ", v.probability);
    s << indent << "roi: ";
    s << std::endl;
    Printer< ::sensor_msgs::RegionOfInterest_<ContainerAllocator> >::stream(s, indent + "  ", v.roi);
    s << indent << "min: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.min);
    s << indent << "max: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.max);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVING_OBJECT_MSGS_MESSAGE_MOVINGOBJECT_H