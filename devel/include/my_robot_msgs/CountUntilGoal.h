// Generated by gencpp from file my_robot_msgs/CountUntilGoal.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_COUNTUNTILGOAL_H
#define MY_ROBOT_MSGS_MESSAGE_COUNTUNTILGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_robot_msgs
{
template <class ContainerAllocator>
struct CountUntilGoal_
{
  typedef CountUntilGoal_<ContainerAllocator> Type;

  CountUntilGoal_()
    : max_number(0)
    , wait_duration(0.0)  {
    }
  CountUntilGoal_(const ContainerAllocator& _alloc)
    : max_number(0)
    , wait_duration(0.0)  {
  (void)_alloc;
    }



   typedef int64_t _max_number_type;
  _max_number_type max_number;

   typedef double _wait_duration_type;
  _wait_duration_type wait_duration;





  typedef boost::shared_ptr< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CountUntilGoal_

typedef ::my_robot_msgs::CountUntilGoal_<std::allocator<void> > CountUntilGoal;

typedef boost::shared_ptr< ::my_robot_msgs::CountUntilGoal > CountUntilGoalPtr;
typedef boost::shared_ptr< ::my_robot_msgs::CountUntilGoal const> CountUntilGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator1> & lhs, const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator2> & rhs)
{
  return lhs.max_number == rhs.max_number &&
    lhs.wait_duration == rhs.wait_duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator1> & lhs, const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca8c86ed62b42e478aaac2e19c943016";
  }

  static const char* value(const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xca8c86ed62b42e47ULL;
  static const uint64_t static_value2 = 0x8aaac2e19c943016ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/CountUntilGoal";
  }

  static const char* value(const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal \n"
"int64 max_number\n"
"float64 wait_duration\n"
;
  }

  static const char* value(const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.max_number);
      stream.next(m.wait_duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CountUntilGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::CountUntilGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::CountUntilGoal_<ContainerAllocator>& v)
  {
    s << indent << "max_number: ";
    Printer<int64_t>::stream(s, indent + "  ", v.max_number);
    s << indent << "wait_duration: ";
    Printer<double>::stream(s, indent + "  ", v.wait_duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_COUNTUNTILGOAL_H
