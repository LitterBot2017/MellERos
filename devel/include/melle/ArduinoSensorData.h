// Generated by gencpp from file melle/ArduinoSensorData.msg
// DO NOT EDIT!


#ifndef MELLE_MESSAGE_ARDUINOSENSORDATA_H
#define MELLE_MESSAGE_ARDUINOSENSORDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace melle
{
template <class ContainerAllocator>
struct ArduinoSensorData_
{
  typedef ArduinoSensorData_<ContainerAllocator> Type;

  ArduinoSensorData_()
    : binFullness(0)
    , batteryLevel(0)  {
    }
  ArduinoSensorData_(const ContainerAllocator& _alloc)
    : binFullness(0)
    , batteryLevel(0)  {
  (void)_alloc;
    }



   typedef int8_t _binFullness_type;
  _binFullness_type binFullness;

   typedef int8_t _batteryLevel_type;
  _batteryLevel_type batteryLevel;




  typedef boost::shared_ptr< ::melle::ArduinoSensorData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::melle::ArduinoSensorData_<ContainerAllocator> const> ConstPtr;

}; // struct ArduinoSensorData_

typedef ::melle::ArduinoSensorData_<std::allocator<void> > ArduinoSensorData;

typedef boost::shared_ptr< ::melle::ArduinoSensorData > ArduinoSensorDataPtr;
typedef boost::shared_ptr< ::melle::ArduinoSensorData const> ArduinoSensorDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::melle::ArduinoSensorData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::melle::ArduinoSensorData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace melle

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'melle': ['/home/nima/Code/Ros/melle_ws/src/melle/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::melle::ArduinoSensorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::melle::ArduinoSensorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melle::ArduinoSensorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melle::ArduinoSensorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melle::ArduinoSensorData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melle::ArduinoSensorData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::melle::ArduinoSensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "78ac0557f2be5bfe3f1764f8836b3aca";
  }

  static const char* value(const ::melle::ArduinoSensorData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x78ac0557f2be5bfeULL;
  static const uint64_t static_value2 = 0x3f1764f8836b3acaULL;
};

template<class ContainerAllocator>
struct DataType< ::melle::ArduinoSensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "melle/ArduinoSensorData";
  }

  static const char* value(const ::melle::ArduinoSensorData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::melle::ArduinoSensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 binFullness\n\
int8 batteryLevel\n\
";
  }

  static const char* value(const ::melle::ArduinoSensorData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::melle::ArduinoSensorData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.binFullness);
      stream.next(m.batteryLevel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArduinoSensorData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::melle::ArduinoSensorData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::melle::ArduinoSensorData_<ContainerAllocator>& v)
  {
    s << indent << "binFullness: ";
    Printer<int8_t>::stream(s, indent + "  ", v.binFullness);
    s << indent << "batteryLevel: ";
    Printer<int8_t>::stream(s, indent + "  ", v.batteryLevel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MELLE_MESSAGE_ARDUINOSENSORDATA_H
