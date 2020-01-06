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

static long motiontime = 0;
float Kv[3] = {0};  
float Kp[3] = {0};
float movejoint1 = 0, movejoint2 = 0;
unsigned long int Tpi = 0;
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

    ros::init(argc, argv, "position_ros_mode");
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

        if( motiontime >= 100){
            if( motiontime == 100){
                Kp[0] = 0.132; Kp[1] = 0.132; Kp[2] = 0.132; 
                Kv[0] = 0.02; Kv[1] = 0.02; Kv[2] = 0.02; 
            }

            if( motiontime == 500){
                Kp[0] = 0.5; Kp[1] = 0.15; Kp[2] = 0.15; 
                Kv[0] = 0.02; Kv[1] = 0.02; Kv[2] = 0.02; 
            }

            if( motiontime == 900){
                Kp[0] = 0.8; Kp[1] = 0.18; Kp[2] = 0.18; 
                Kv[0] = 0.02; Kv[1] = 0.02; Kv[2] = 0.02; 
            }

            if( motiontime == 1300){
                Kp[0] = 1.2; Kp[1] = 0.22; Kp[2] = 0.22; 
                Kv[0] = 0.02; Kv[1] = 0.02; Kv[2] = 0.02; 
            }

            if( motiontime == 1700){
                Kp[0] = 1.84; Kp[1] = 0.263; Kp[2] = 0.263; 
                Kv[0] = 0.02; Kv[1] = 0.02; Kv[2] = 0.02; 
            }

            // Move leg
            if(motiontime >2000){
                Tpi++;
                movejoint1 = 0.25 * sin(4*M_PI*Tpi/1000.0);
                movejoint2 = 0.4 * sin(4*M_PI*Tpi/1000.0);
            }
            
            SendLowROS.motorCmd[FR_0].position = 0.0;
            SendLowROS.motorCmd[FR_0].velocity = 0;
            SendLowROS.motorCmd[FR_0].positionStiffness = Kp[0];
            SendLowROS.motorCmd[FR_0].velocityStiffness = Kv[0];
            SendLowROS.motorCmd[FR_0].torque = 0.65f;

            SendLowROS.motorCmd[FR_1].position = 0.5 + movejoint2;
            SendLowROS.motorCmd[FR_1].velocity = 0;
            SendLowROS.motorCmd[FR_1].positionStiffness = Kp[1];
            SendLowROS.motorCmd[FR_1].velocityStiffness = Kv[1];
            SendLowROS.motorCmd[FR_1].torque = 0.0f;

            SendLowROS.motorCmd[FR_2].position =  -1.1 + movejoint1;
            SendLowROS.motorCmd[FR_2].velocity = 0;
            SendLowROS.motorCmd[FR_2].positionStiffness = Kp[2];
            SendLowROS.motorCmd[FR_2].velocityStiffness = Kv[2];
            SendLowROS.motorCmd[FR_2].torque = 0.0f;
        }
        memcpy(&SendLowLCM, &SendLowROS, sizeof(LowCmd));
        roslcm.Send(SendLowLCM);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
