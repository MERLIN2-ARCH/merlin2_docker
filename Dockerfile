FROM dorowu/ubuntu-desktop-lxde-vnc:focal

USER root

COPY ./src/install/utils.sh $INST_SCRIPTS/
RUN chmod +x $INST_SCRIPTS/utils.sh && $INST_SCRIPTS/utils.sh

COPY ./src/install/ros2.sh $INST_SCRIPTS/
RUN chmod +x $INST_SCRIPTS/ros2.sh && $INST_SCRIPTS/ros2.sh

COPY ./src/install/ros2_utils.sh $INST_SCRIPTS/
RUN chmod +x $INST_SCRIPTS/ros2_utils.sh && $INST_SCRIPTS/ros2_utils.sh

COPY ./src/install/rb1.sh $INST_SCRIPTS/
RUN chmod +x $INST_SCRIPTS/rb1.sh && $INST_SCRIPTS/rb1.sh

COPY ./src/install/merlin2.sh $INST_SCRIPTS/
RUN chmod +x $INST_SCRIPTS/merlin2.sh && $INST_SCRIPTS/merlin2.sh
