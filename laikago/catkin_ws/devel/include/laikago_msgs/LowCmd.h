// Generated by gencpp from file laikago_msgs/LowCmd.msg
// DO NOT EDIT!


#ifndef LAIKAGO_MSGS_MESSAGE_LOWCMD_H
#define LAIKAGO_MSGS_MESSAGE_LOWCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <laikago_msgs/MotorCmd.h>
#include <laikago_msgs/LED.h>

namespace laikago_msgs
{
template <class ContainerAllocator>
struct LowCmd_
{
  typedef LowCmd_<ContainerAllocator> Type;

  LowCmd_()
    : levelFlag(0)
    , motorCmd()
    , led()
    , wirelessRemote()
    , crc(0)  {
      wirelessRemote.assign(0);
  }
  LowCmd_(const ContainerAllocator& _alloc)
    : levelFlag(0)
    , motorCmd()
    , led()
    , wirelessRemote()
    , crc(0)  {
  (void)_alloc;
      motorCmd.assign( ::laikago_msgs::MotorCmd_<ContainerAllocator> (_alloc));

      led.assign( ::laikago_msgs::LED_<ContainerAllocator> (_alloc));

      wirelessRemote.assign(0);
  }



   typedef uint8_t _levelFlag_type;
  _levelFlag_type levelFlag;

   typedef boost::array< ::laikago_msgs::MotorCmd_<ContainerAllocator> , 20>  _motorCmd_type;
  _motorCmd_type motorCmd;

   typedef boost::array< ::laikago_msgs::LED_<ContainerAllocator> , 4>  _led_type;
  _led_type led;

   typedef boost::array<uint8_t, 40>  _wirelessRemote_type;
  _wirelessRemote_type wirelessRemote;

   typedef uint32_t _crc_type;
  _crc_type crc;





  typedef boost::shared_ptr< ::laikago_msgs::LowCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::laikago_msgs::LowCmd_<ContainerAllocator> const> ConstPtr;

}; // struct LowCmd_

typedef ::laikago_msgs::LowCmd_<std::allocator<void> > LowCmd;

typedef boost::shared_ptr< ::laikago_msgs::LowCmd > LowCmdPtr;
typedef boost::shared_ptr< ::laikago_msgs::LowCmd const> LowCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::laikago_msgs::LowCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::laikago_msgs::LowCmd_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::laikago_msgs::LowCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::laikago_msgs::LowCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laikago_msgs::LowCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laikago_msgs::LowCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laikago_msgs::LowCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laikago_msgs::LowCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::laikago_msgs::LowCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "07bb727e47213ef7a2c819ad6a8669b1";
  }

  static const char* value(const ::laikago_msgs::LowCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x07bb727e47213ef7ULL;
  static const uint64_t static_value2 = 0xa2c819ad6a8669b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::laikago_msgs::LowCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "laikago_msgs/LowCmd";
  }

  static const char* value(const ::laikago_msgs::LowCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::laikago_msgs::LowCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 levelFlag\n\
MotorCmd[20] motorCmd\n\
LED[4] led\n\
uint8[40] wirelessRemote\n\
uint32 crc                # check bit\n\
================================================================================\n\
MSG: laikago_msgs/MotorCmd\n\
uint8 mode                  # motor target mode\n\
float32 position           # motor target position\n\
float32 velocity           # motor target velocity\n\
float32 positionStiffness  # motor spring stiffness coefficient\n\
float32 velocityStiffness  # motor damper coefficient\n\
float32 torque             # motor target torque\n\
================================================================================\n\
MSG: laikago_msgs/LED\n\
uint8 r\n\
uint8 g\n\
uint8 b\n\
";
  }

  static const char* value(const ::laikago_msgs::LowCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::laikago_msgs::LowCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.levelFlag);
      stream.next(m.motorCmd);
      stream.next(m.led);
      stream.next(m.wirelessRemote);
      stream.next(m.crc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LowCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::laikago_msgs::LowCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::laikago_msgs::LowCmd_<ContainerAllocator>& v)
  {
    s << indent << "levelFlag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.levelFlag);
    s << indent << "motorCmd[]" << std::endl;
    for (size_t i = 0; i < v.motorCmd.size(); ++i)
    {
      s << indent << "  motorCmd[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::laikago_msgs::MotorCmd_<ContainerAllocator> >::stream(s, indent + "    ", v.motorCmd[i]);
    }
    s << indent << "led[]" << std::endl;
    for (size_t i = 0; i < v.led.size(); ++i)
    {
      s << indent << "  led[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::laikago_msgs::LED_<ContainerAllocator> >::stream(s, indent + "    ", v.led[i]);
    }
    s << indent << "wirelessRemote[]" << std::endl;
    for (size_t i = 0; i < v.wirelessRemote.size(); ++i)
    {
      s << indent << "  wirelessRemote[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.wirelessRemote[i]);
    }
    s << indent << "crc: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.crc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAIKAGO_MSGS_MESSAGE_LOWCMD_H
