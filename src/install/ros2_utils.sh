cd $HOME
git clone https://github.com/mgonzs13/ros2_utils_scripts.git
echo "source ${PWD}/ros2_utils_scripts/scripts/all.sh" >>$HOME/.bashrc
echo "rosconfig -d foxy -w $HOME/ros2_ws" >>$HOME/.bashrc
