// Generated by gencpp from file melle/HttpRequest.msg
// DO NOT EDIT!


#ifndef MELLE_MESSAGE_HTTPREQUEST_H
#define MELLE_MESSAGE_HTTPREQUEST_H


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
struct HttpRequest_
{
  typedef HttpRequest_<ContainerAllocator> Type;

  HttpRequest_()
    : url()
    , type()
    , body()  {
    }
  HttpRequest_(const ContainerAllocator& _alloc)
    : url(_alloc)
    , type(_alloc)
    , body(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _url_type;
  _url_type url;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _body_type;
  _body_type body;




  typedef boost::shared_ptr< ::melle::HttpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::melle::HttpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct HttpRequest_

typedef ::melle::HttpRequest_<std::allocator<void> > HttpRequest;

typedef boost::shared_ptr< ::melle::HttpRequest > HttpRequestPtr;
typedef boost::shared_ptr< ::melle::HttpRequest const> HttpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::melle::HttpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::melle::HttpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace melle

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::melle::HttpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::melle::HttpRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melle::HttpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melle::HttpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melle::HttpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melle::HttpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::melle::HttpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f532e3bdae5488fc34c479d27a3b97e7";
  }

  static const char* value(const ::melle::HttpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf532e3bdae5488fcULL;
  static const uint64_t static_value2 = 0x34c479d27a3b97e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::melle::HttpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "melle/HttpRequest";
  }

  static const char* value(const ::melle::HttpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::melle::HttpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string url\n\
string type\n\
string body\n\
";
  }

  static const char* value(const ::melle::HttpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::melle::HttpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.url);
      stream.next(m.type);
      stream.next(m.body);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HttpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::melle::HttpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::melle::HttpRequest_<ContainerAllocator>& v)
  {
    s << indent << "url: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.url);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "body: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.body);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MELLE_MESSAGE_HTTPREQUEST_H