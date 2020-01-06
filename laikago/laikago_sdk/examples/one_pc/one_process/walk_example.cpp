/************************************************************************
Copyright (c) 2018-2019, Unitree Robotics.Co.Ltd. All rights reserved.
Use of this source code is governed by the MPL-2.0 license, see LICENSE.
************************************************************************/

#include "laikago_sdk/laikago_sdk.hpp"
#include <math.h>
#include <iostream>

using namespace laikago;

static long motiontime = 0;
HighCmd cmd = {0};
HighState state = {0};
Control control(HIGHLEVEL);
UDP udp(HIGH_CMD_LENGTH, HIGH_STATE_LENGTH);

void UDPRecv()
{
    udp.Recv();
}

void RobotControl() 
{
    motiontime = motiontime+2;
    udp.GetState(state);
    // printf("%f\n", state.forwardSpeed);

    cmd.forwardSpeed = 0.0f;
    cmd.sideSpeed = 0.0f;
    cmd.rotateSpeed = 0.0f;
    cmd.forwardSpeed = 0.0f;

    cmd.mode = 0;
    cmd.roll  = 0;
    cmd.pitch = 0;
    cmd.yaw = 0;

    if(motiontime>1000 && motiontime<1500){
        cmd.roll = 0.5f;
    }

    if(motiontime>1500 && motiontime<2000){
        cmd.pitch = 0.3f;
    }

    if(motiontime>2000 && motiontime<2500){
        cmd.yaw = 0.3f;
    }

    if(motiontime>2500 && motiontime<3000){
        cmd.bodyHeight = -0.3f;
    }

    if(motiontime>3000 && motiontime<3500){
        cmd.bodyHeight = 0.3f;
    }

    if(motiontime>3500 && motiontime<4000){
        cmd.bodyHeight = 0.0f;
    }

    if(motiontime>4000 && motiontime<5000){
        cmd.mode = 2;
    }

    if(motiontime>5000 && motiontime<8500){
        cmd.forwardSpeed = 0.2f; // -1  ~ +1
    }

    if(motiontime>8500 && motiontime<12000){
        cmd.forwardSpeed = -0.2f; // -1  ~ +1
    }

    if(motiontime>12000 && motiontime<16000){
        cmd.rotateSpeed = 0.3f;   // turn
    }

    if(motiontime>16000 && motiontime<20000){
        cmd.rotateSpeed = -0.3f;   // turn
    }

    if(motiontime>20000 && motiontime<21000){
        cmd.mode = 1;
    }

    udp.Send(cmd);
}

int main(void) 
{
    std::cout << "Control level is set to HIGH-level." << std::endl
              << "WARNING: Make sure the robot is standing on the ground." << std::endl
              << "Press Enter to continue..." << std::endl;
    std::cin.ignore();

    control.InitCmdData(cmd);
    control.loop.RegistFunc("UDP/Send", RobotControl);
    control.loop.RegistFunc("UDP/Recv", UDPRecv);
    control.loop.Start();

    return 0; 
}
