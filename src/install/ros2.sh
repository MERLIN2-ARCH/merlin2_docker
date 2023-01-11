#!/bin/bash

curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list >/dev/null

apt update
apt upgrade -y

apt install ros-foxy-desktop python3-argcomplete python3-colcon-common-extensions python3-rosdep -y
rosdep init
rosdep update

mkdir -p /root/ros2_ws/src
