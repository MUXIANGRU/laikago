Code package for laikago
====  
		This is a simulation demo fot laikago
configuration:
-------
		source /opt/ros/kinetic/setup.bash
		source /usr/share/gazebo-8/setup.sh
		source ~/catkin_ws/devel/setup.bash
		export ROS_PACKAGE_PATH=~/catkin_ws:${ROS_PACKAGE_PATH}
		export GAZEBO_PLUGIN_PATH=~/catkin_ws/devel/lib:${GAZEBO_PLUGIN_PATH}
		export LD_LIBRARY_PATH=~/catkin_ws/devel/lib:${LD_LIBRARY_PATH}
Build:
-------

		cd ~/catkin_ws
		catkin_make

laikago_description:
------- 
you can test this package:
		roslaunch laikago_description laikago_rviz.launch 
laikago_gazebo:
------- 
Gazebo8 is recommended. Notice that it is not compatible with other versions like Gazebo7. Make sure unders have been installed:
		sudo apt-get install ros-kinetic-controller-manager ros-kinetic-ros-control ros-kinetic-ros-controllers ros-kinetic-joint-state-controller ros-kinetic-effort-controllers ros-kinetic-velocity-controllers ros-kinetic-position-controllers ros-kinetic-robot-controllers ros-kinetic-robot-state-publisher ros-kinetic-gazebo8-ros ros-kinetic-gazebo8-ros-control ros-kinetic-gazebo8-ros-pkgs ros-kinetic-gazebo8-ros-dev
then you can try this:
		roslaunch laikago_gazebo normal.launch
let the dog stand:
		rosrun laikago_gazebo laikago_servo
You can add external disturbances with this node, like a push or a kick:
		rosrun laikago_gazebo laikago_external_force





