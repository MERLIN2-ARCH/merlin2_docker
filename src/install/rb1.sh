#!/bin/bash

# clone
cd /root/ros2_ws/src
git clone -b humble https://github.com/mgonzs13/ros2_rb1.git
git clone --recurse-submodules https://github.com/mgonzs13/ros2_rb1_sandbox.git
echo "GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/ros2_ws/install/aws_robomaker_hospital_world/share/aws_robomaker_hospital_world/fuel_models/" >>/root/.bashrc

# rosdep
source /opt/ros/humble/setup.bash
cd /root/ros2_ws
rosdep init
rosdep update
rosdep install --from-paths src --ignore-src -r -y

# colcon
source /opt/ros/humble/setup.bash
cd /root/ros2_ws
colcon build
