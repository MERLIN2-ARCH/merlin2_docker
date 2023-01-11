#!/bin/bash

# clone
cd /root/ros2_ws/src
git clone https://github.com/mgonzs13/ros2_rb1.git

# rosdep
source /opt/ros/foxy/setup.bash
cd /root/ros2_ws
rosdep install --from-paths src --ignore-src -r -y

# colcon
source /opt/ros/foxy/setup.bash
cd /root/ros2_ws
colcon build
