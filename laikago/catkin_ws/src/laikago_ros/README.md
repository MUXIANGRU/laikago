The laikago_ros is used for visualization, simulation and control of Laikago.

## laikago_controller
Ros native controllers are not used here. 
We prefer to build this controller runs like the real one.

## laikago_description
You can check joint limits.
```bash
roslaunch laikago_description laikago_rviz.launch
```

## laikago_gazebo
A dynamic simulation is suggested before deploy code on real robot.
```bash
roslaunch laikago_gazebo normal.launch
rosrun laikago_gazebo laikago_servo
```

## laikago_msgs
The communication data is the same as laikago_sdk.

## laikago_real
These node can control real robot with lcm server runs under laikago_sdk.
```bash
roscore
rosrun laikago_real position_lcm
```
