#!/bin/bash

cd /root/ros2_ws/src
git clone --recurse-submodules https://github.com/MERLIN2-ARCH/merlin2.git
cd merlin2

# SMTPlan+ dependencies
apt install libz3-dev -y

# unified-planning
pip3 install --pre unified-planning[pyperplan,tamer]

# MongoDB
./scrips/install_mongo.sh
./scrips/install_mongocxx.sh

# sst
apt-get install -y python-dev libportaudio2 libportaudiocpp0 portaudio19-dev libasound-dev swig

# tts
apt install espeak -y
apt install speech-dispatcher -y
apt install festival festival-doc festvox-kdlpc16k festvox-ellpc11k festvox-italp16k festvox-itapc16k -y
apt install mpg321 -y

# python3
pip3 install -r requirements.txt
python3 merlin2_arch/merlin2_reactive_layer/speech_to_text/nltk_download.py

# colcon
source /opt/ros/foxy/setup.bash
cd /root/ros2_ws
colcon build
