/************************************************************************
Copyright (c) 2018-2019, Unitree Robotics.Co.Ltd. All rights reserved.
Use of this source code is governed by the MPL-2.0 license, see LICENSE.
************************************************************************/

#include <ros/ros.h>
#include <pthread.h>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <laikago_msgs/LowCmd.h>
#include <laikago_msgs/LowState.h>
#include "laikago_sdk/laikago_sdk.hpp"

using namespace laikago;

static long motiontime=0;
float torque = 0;
LowCmd SendLowLCM = {0};
LowState RecvLowLCM = {0};
laikago_msgs::LowCmd SendLowROS;
laikago_msgs::LowState RecvLowROS;

Control control(LOWLEVEL);
LCM roslcm;
boost::mutex mutex;

void* update_loop(void* data)
{
    while(ros::ok){
        boost::mutex::scoped_lock lock(mutex);
        roslcm.Recv();
        lock.unlock();
        usleep(2000);
    }
}

int main(int argc, char *argv[])
{
    std::cout << "WARNING: Control level is set to LOW-level." << std::endl
              << "Make sure the robot is hung up." << std::endl
              << "Press Enter to continue..." << std::endl;
    std::cin.ignore();

    ros::init(argc, argv, "torque_ros_mode");
    ros::NodeHandle n;
    ros::Rate loop_rate(500);
    roslcm.SubscribeState();

    pthread_t tid;
    pthread_create(&tid, NULL, update_loop, NULL);

    SendLowROS.levelFlag = LOWLEVEL;
    for(int i = 1; i<13; i++){
        SendLowROS.motorCmd[i].mode = 0x0A;   // motor switch to servo (PMSM) mode
    }

    while (ros::ok()){
        motiontime++;
        roslcm.Get(RecvLowLCM);
        memcpy(&RecvLowROS, &RecvLowLCM, sizeof(LowState));
        printf("%f\n",  RecvLowROS.motorState[FR_1].position);

        // gravity compensation
        SendLowROS.motorCmd[FR_0].torque = -0.65f;
        SendLowROS.motorCmd[FL_0].torque = +0.65f;
        SendLowROS.motorCmd[RR_0].torque = -0.65f;
        SendLowROS.motorCmd[RL_0].torque = +0.65f;

        if( motiontime >= 500){
            torque = (0 - RecvLowROS.motorState[FL_1].position)*10.0f - (RecvLowROS.motorState[FL_1].velocity-0)*1.0f;
            if(torque > 5.0f) torque = 5.0f;
            if(torque < -5.0f) torque = -5.0f;

            SendLowROS.motorCmd[FL_1].position = PosStopF;
            SendLowROS.motorCmd[FL_1].velocity = VelStopF;
            SendLowROS.motorCmd[FL_1].positionStiffness = 0;
            SendLowROS.motorCmd[FL_1].velocityStiffness = 0;
            SendLowROS.motorCmd[FL_1].torque = torque;
        }

        memcpy(&SendLowLCM, &SendLowROS, sizeof(LowCmd));
        roslcm.Send(SendLowLCM);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
