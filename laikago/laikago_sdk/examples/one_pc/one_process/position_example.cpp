/************************************************************************
Copyright (c) 2018-2019, Unitree Robotics.Co.Ltd. All rights reserved.
Use of this source code is governed by the MPL-2.0 license, see LICENSE.
************************************************************************/

#include "laikago_sdk/laikago_sdk.hpp"
#include <math.h>
#include <iostream>

#include <sys/time.h>
struct timeval tbegin;
struct timeval tend;
double time_consume;

using namespace laikago;

static long motiontime = 0;
float Kv[3] = {0};  
float Kp[3] = {0};
float movejoint1 = 0, movejoint2 = 0;
unsigned long int Tpi = 0;

LowCmd cmd = {0};
LowState state = {0};
Control control(LOWLEVEL);
UDP udp(LOW_CMD_LENGTH, LOW_STATE_LENGTH);

void Print()
{
    printf("%f    %f    %f\n", cmd.motorCmd[FR_1].position, state.motorState[FR_1].position, time_consume);
}

void UDPRecv()
{
    udp.Recv();
}

void RobotControl() 
{
    motiontime++;
    udp.GetState(state);
    // printf("%f\n", state.motorState[FR_1].position);

    // gravity compensation
    cmd.motorCmd[FR_0].torque = -0.65f;
    cmd.motorCmd[FL_0].torque = +0.65f;
    cmd.motorCmd[RR_0].torque = -0.65f;
    cmd.motorCmd[RL_0].torque = +0.65f;

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
        
        cmd.motorCmd[FR_0].position = 0.0;
        cmd.motorCmd[FR_0].velocity = 0;
        cmd.motorCmd[FR_0].positionStiffness = Kp[0];
        cmd.motorCmd[FR_0].velocityStiffness = Kv[0];
        cmd.motorCmd[FR_0].torque = 0.65f;

        cmd.motorCmd[FR_1].position = 0.5 + movejoint2;
        cmd.motorCmd[FR_1].velocity = 0;
        cmd.motorCmd[FR_1].positionStiffness = Kp[1];
        cmd.motorCmd[FR_1].velocityStiffness = Kv[1];
        cmd.motorCmd[FR_1].torque = 0.0f;

        cmd.motorCmd[FR_2].position =  -1.1 + movejoint1;
        cmd.motorCmd[FR_2].velocity = 0;
        cmd.motorCmd[FR_2].positionStiffness = Kp[2];
        cmd.motorCmd[FR_2].velocityStiffness = Kv[2];
        cmd.motorCmd[FR_2].torque = 0.0f;
    }

    control.JointLimit(cmd);
    control.PowerLimit(cmd, state, 1);

    udp.Send(cmd);
    // printf("%f\n", cmd.motorCmd[FR_1].position);

    gettimeofday(&tend, NULL);
    time_consume = ((tend.tv_sec-tbegin.tv_sec)*1000000+(tend.tv_usec-tbegin.tv_usec))/1000.0;
    tbegin = tend;
}

int main(void)
{
    std::cout << "Control level is set to LOW-level." << std::endl
              << "WARNING: Make sure the robot is hung up." << std::endl
              << "Press Enter to continue..." << std::endl;
    std::cin.ignore();

    control.loop.SetPrint(true);
    control.loop.SetPrintPeriod(2000); //4ms
    control.InitCmdData(cmd);
    control.loop.RegistFunc("UDP/Send", RobotControl);
    control.loop.RegistFunc("UDP/Recv", UDPRecv);
    control.loop.RegistFunc("PRINT", Print);
    control.loop.Start();
    return 0; 
}
