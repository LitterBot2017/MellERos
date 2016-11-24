#include "ros/ros.h"
#include "melle/ArduinoSensorData.h"
#include "melle/AndroidSensorData.h"
#include "restclient-cpp/restclient.h"

void androidSensorDataCallback(const melle::AndroidSensorData::ConstPtr& msg)
{
  ROS_INFO("I heard: lat: %f, lng: %f, azimuth: %f, pitch: %f, roll: %f",
    msg->latitude, msg->longitude, msg->azimuth, msg->pitch, msg->roll);
}

void arduinoSensorDataCallback(const melle::ArduinoSensorData::ConstPtr& msg)
{
  ROS_INFO("I heard: binFullness: %d, batteryLevel: %d", msg->binFullness, msg->batteryLevel);
}

int main(int argc, char **argv)
{
  // Init ros and speicfy name of our node -- heartbeat
  ros::init(argc, argv, "heartbeat");

  // NodeHandle to ROS
  ros::NodeHandle n;

  // Subscribe to receive AndroidSensorData
  // The message will be sent over an HTTP service per ROSBridge
  ros::Subscriber androidSub = n.subscribe("AndroidSensorData", 5, androidSensorDataCallback);
  ros::Subscriber arduinoSub = n.subscribe("ArduinoSensorData", 5, arduinoSensorDataCallback);

  ros::spin();

  return 0;
}

