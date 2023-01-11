#!/bin/bash

# clone
cd /root/ros2_ws/src
git clone -b galactic https://github.com/mgonzs13/ros2_rb1.git

# rosdep
source /opt/ros/galactic/setup.bash
cd /root/ros2_ws
rosdep install --from-paths src --ignore-src -r -y

apt install -y \
    ros-galactic-navigation2 \
    ros-galactic-nav2-bringup \
    ros-galactic-dwb-core

apt install -y \
    ros-galactic-xacro \
    ros-galactic-gazebo-dev \
    ros-galactic-gazebo-ros \
    ros-galactic-gazebo-ros2-control \
    ros-galactic-gazebo-ros-pkgs \
    ros-galactic-gazebo-plugins \
    ros-galactic-joint-state-broadcaster \
    ros-galactic-position-controllers \
    ros-galactic-robot-state-publisher \
    ros-galactic-controller-manager

# colcon
source /opt/ros/galactic/setup.bash
cd /root/ros2_ws
colcon build
