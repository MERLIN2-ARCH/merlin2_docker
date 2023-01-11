cd /root/ros2_ws/src
git clone https://github.com/mgonzs13/ros2_rb1.git

/bin/bash -c "source /opt/ros/foxy/setup.bash \
              cd /root/ros2_ws \
              rosdep install --from-paths src --ignore-src -r -y"

/bin/bash -c "source /opt/ros/foxy/setup.bash \
              cd /root/ros2_ws \
              colcon build"
