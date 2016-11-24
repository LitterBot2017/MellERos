// Generated by gencpp from file rosapi/GetTimeResponse.msg
// DO NOT EDIT!


#ifndef ROSAPI_MESSAGE_GETTIMERESPONSE_H
#define ROSAPI_MESSAGE_GETTIMERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosapi
{
template <class ContainerAllocator>
struct GetTimeResponse_
{
  typedef GetTimeResponse_<ContainerAllocator> Type;

  GetTimeResponse_()
    : time()  {
    }
  GetTimeResponse_(const ContainerAllocator& _alloc)
    : time()  {
  (void)_alloc;
    }



   typedef ros::Time _time_type;
  _time_type time;




  typedef boost::shared_ptr< ::rosapi::GetTimeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosapi::GetTimeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetTimeResponse_

typedef ::rosapi::GetTimeResponse_<std::allocator<void> > GetTimeResponse;

typedef boost::shared_ptr< ::rosapi::GetTimeResponse > GetTimeResponsePtr;
typedef boost::shared_ptr< ::rosapi::GetTimeResponse const> GetTimeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosapi::GetTimeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosapi::GetTimeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosapi

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rosapi': ['/home/nima/Code/Ros/melle_ws/src/rosbridge_suite/rosapi/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::GetTimeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::GetTimeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::GetTimeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::GetTimeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::GetTimeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::GetTimeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosapi::GetTimeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "556a4fb76023a469987922359d08a844";
  }

  static const char* value(const ::rosapi::GetTimeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x556a4fb76023a469ULL;
  static const uint64_t static_value2 = 0x987922359d08a844ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosapi::GetTimeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosapi/GetTimeResponse";
  }

  static const char* value(const ::rosapi::GetTimeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosapi::GetTimeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time time\n\
";
  }

  static const char* value(const ::rosapi::GetTimeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosapi::GetTimeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTimeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosapi::GetTimeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosapi::GetTimeResponse_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSAPI_MESSAGE_GETTIMERESPONSE_H