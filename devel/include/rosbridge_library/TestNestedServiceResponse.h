// Generated by gencpp from file rosbridge_library/TestNestedServiceResponse.msg
// DO NOT EDIT!


#ifndef ROSBRIDGE_LIBRARY_MESSAGE_TESTNESTEDSERVICERESPONSE_H
#define ROSBRIDGE_LIBRARY_MESSAGE_TESTNESTEDSERVICERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64.h>

namespace rosbridge_library
{
template <class ContainerAllocator>
struct TestNestedServiceResponse_
{
  typedef TestNestedServiceResponse_<ContainerAllocator> Type;

  TestNestedServiceResponse_()
    : data()  {
    }
  TestNestedServiceResponse_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64_<ContainerAllocator>  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TestNestedServiceResponse_

typedef ::rosbridge_library::TestNestedServiceResponse_<std::allocator<void> > TestNestedServiceResponse;

typedef boost::shared_ptr< ::rosbridge_library::TestNestedServiceResponse > TestNestedServiceResponsePtr;
typedef boost::shared_ptr< ::rosbridge_library::TestNestedServiceResponse const> TestNestedServiceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosbridge_library

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'rosbridge_library': ['/home/nima/Code/Ros/melle_ws/src/rosbridge_suite/rosbridge_library/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8d62201b2d01a4931eec14d19d9c5317";
  }

  static const char* value(const ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8d62201b2d01a493ULL;
  static const uint64_t static_value2 = 0x1eec14d19d9c5317ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosbridge_library/TestNestedServiceResponse";
  }

  static const char* value(const ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
std_msgs/Float64 data\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Float64\n\
float64 data\n\
";
  }

  static const char* value(const ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TestNestedServiceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosbridge_library::TestNestedServiceResponse_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSBRIDGE_LIBRARY_MESSAGE_TESTNESTEDSERVICERESPONSE_H
