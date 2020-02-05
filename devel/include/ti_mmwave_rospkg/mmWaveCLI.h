// Generated by gencpp from file ti_mmwave_rospkg/mmWaveCLI.msg
// DO NOT EDIT!


#ifndef TI_MMWAVE_ROSPKG_MESSAGE_MMWAVECLI_H
#define TI_MMWAVE_ROSPKG_MESSAGE_MMWAVECLI_H

#include <ros/service_traits.h>


#include <ti_mmwave_rospkg/mmWaveCLIRequest.h>
#include <ti_mmwave_rospkg/mmWaveCLIResponse.h>


namespace ti_mmwave_rospkg
{

struct mmWaveCLI
{

typedef mmWaveCLIRequest Request;
typedef mmWaveCLIResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct mmWaveCLI
} // namespace ti_mmwave_rospkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ti_mmwave_rospkg::mmWaveCLI > {
  static const char* value()
  {
    return "f079c47a57c95983638c539cc506d12d";
  }

  static const char* value(const ::ti_mmwave_rospkg::mmWaveCLI&) { return value(); }
};

template<>
struct DataType< ::ti_mmwave_rospkg::mmWaveCLI > {
  static const char* value()
  {
    return "ti_mmwave_rospkg/mmWaveCLI";
  }

  static const char* value(const ::ti_mmwave_rospkg::mmWaveCLI&) { return value(); }
};


// service_traits::MD5Sum< ::ti_mmwave_rospkg::mmWaveCLIRequest> should match 
// service_traits::MD5Sum< ::ti_mmwave_rospkg::mmWaveCLI > 
template<>
struct MD5Sum< ::ti_mmwave_rospkg::mmWaveCLIRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ti_mmwave_rospkg::mmWaveCLI >::value();
  }
  static const char* value(const ::ti_mmwave_rospkg::mmWaveCLIRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ti_mmwave_rospkg::mmWaveCLIRequest> should match 
// service_traits::DataType< ::ti_mmwave_rospkg::mmWaveCLI > 
template<>
struct DataType< ::ti_mmwave_rospkg::mmWaveCLIRequest>
{
  static const char* value()
  {
    return DataType< ::ti_mmwave_rospkg::mmWaveCLI >::value();
  }
  static const char* value(const ::ti_mmwave_rospkg::mmWaveCLIRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ti_mmwave_rospkg::mmWaveCLIResponse> should match 
// service_traits::MD5Sum< ::ti_mmwave_rospkg::mmWaveCLI > 
template<>
struct MD5Sum< ::ti_mmwave_rospkg::mmWaveCLIResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ti_mmwave_rospkg::mmWaveCLI >::value();
  }
  static const char* value(const ::ti_mmwave_rospkg::mmWaveCLIResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ti_mmwave_rospkg::mmWaveCLIResponse> should match 
// service_traits::DataType< ::ti_mmwave_rospkg::mmWaveCLI > 
template<>
struct DataType< ::ti_mmwave_rospkg::mmWaveCLIResponse>
{
  static const char* value()
  {
    return DataType< ::ti_mmwave_rospkg::mmWaveCLI >::value();
  }
  static const char* value(const ::ti_mmwave_rospkg::mmWaveCLIResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TI_MMWAVE_ROSPKG_MESSAGE_MMWAVECLI_H
