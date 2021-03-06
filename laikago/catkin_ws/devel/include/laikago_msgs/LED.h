// Generated by gencpp from file laikago_msgs/LED.msg
// DO NOT EDIT!


#ifndef LAIKAGO_MSGS_MESSAGE_LED_H
#define LAIKAGO_MSGS_MESSAGE_LED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace laikago_msgs
{
template <class ContainerAllocator>
struct LED_
{
  typedef LED_<ContainerAllocator> Type;

  LED_()
    : r(0)
    , g(0)
    , b(0)  {
    }
  LED_(const ContainerAllocator& _alloc)
    : r(0)
    , g(0)
    , b(0)  {
  (void)_alloc;
    }



   typedef uint8_t _r_type;
  _r_type r;

   typedef uint8_t _g_type;
  _g_type g;

   typedef uint8_t _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::laikago_msgs::LED_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::laikago_msgs::LED_<ContainerAllocator> const> ConstPtr;

}; // struct LED_

typedef ::laikago_msgs::LED_<std::allocator<void> > LED;

typedef boost::shared_ptr< ::laikago_msgs::LED > LEDPtr;
typedef boost::shared_ptr< ::laikago_msgs::LED const> LEDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::laikago_msgs::LED_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::laikago_msgs::LED_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace laikago_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'laikago_msgs': ['/home/unitree/catkin_ws/src/laikago_ros/laikago_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::laikago_msgs::LED_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::laikago_msgs::LED_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laikago_msgs::LED_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laikago_msgs::LED_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laikago_msgs::LED_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laikago_msgs::LED_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::laikago_msgs::LED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "353891e354491c51aabe32df673fb446";
  }

  static const char* value(const ::laikago_msgs::LED_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x353891e354491c51ULL;
  static const uint64_t static_value2 = 0xaabe32df673fb446ULL;
};

template<class ContainerAllocator>
struct DataType< ::laikago_msgs::LED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "laikago_msgs/LED";
  }

  static const char* value(const ::laikago_msgs::LED_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::laikago_msgs::LED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 r\n\
uint8 g\n\
uint8 b\n\
";
  }

  static const char* value(const ::laikago_msgs::LED_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::laikago_msgs::LED_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.r);
      stream.next(m.g);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LED_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::laikago_msgs::LED_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::laikago_msgs::LED_<ContainerAllocator>& v)
  {
    s << indent << "r: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.r);
    s << indent << "g: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.g);
    s << indent << "b: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAIKAGO_MSGS_MESSAGE_LED_H
