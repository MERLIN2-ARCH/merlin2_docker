cd $HOME/ros2_ws/src
git clone https://github.com/mgonzs13/ros2_rb1.git

cd $HOME/ros2_ws/
/bin/bash -c "source $HOME/.bashrc \
              cd $HOME/ros2_ws \
              rosdep install --from-paths src --ignore-src -r -y"

cd $HOME/ros2_ws
/bin/bash -c "source $HOME/.bashrc \
              cd $HOME/ros2_ws \
              colcon_make"
