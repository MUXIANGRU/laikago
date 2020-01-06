/************************************************************************
Copyright (c) 2018-2019, Unitree Robotics.Co.Ltd. All rights reserved.
Use of this source code is governed by the MPL-2.0 license, see LICENSE.
************************************************************************/

#include "laikago_sdk/laikago_sdk.hpp"
#include <math.h>
#include <iostream>

using namespace laikago;

static long motiontime=0;
float torque = 0;

LowCmd cmd = {0};
LowState state = {0};
Control control(LOWLEVEL);
UDP udp(LOW_CMD_LENGTH, LOW_STATE_LENGTH);

void UDPRecv()
{
    udp.Recv();
}

void RobotControl() 
{
    motiontime++;
    udp.GetState(state);

    // gravity compensation
    cmd.motorCmd[FR_0].torque = -0.65f;
    cmd.motorCmd[FL_0].torque = +0.65f;
    cmd.motorCmd[RR_0].torque = -0.65f;
    cmd.motorCmd[RL_0].torque = +0.65f;

    if( motiontime >= 500){
        torque = (0 - state.motorState[FL_1].position)*10.0f - (state.motorState[FL_1].velocity-0)*1.0f;
        if(torque > 5.0f) torque = 5.0f;
        if(torque < -5.0f) torque = -5.0f;

        cmd.motorCmd[FL_1].position = PosStopF;
        cmd.motorCmd[FL_1].velocity = VelStopF;
        cmd.motorCmd[FL_1].positionStiffness = 0;
        cmd.motorCmd[FL_1].velocityStiffness = 0;
        cmd.motorCmd[FL_1].torque = torque;
    }
    control.PowerLimit(cmd, state, 1);

    udp.Send(cmd);
}

int main(void) 
{
    std::cout << "Control level is set to LOW-level." << std::endl
              << "WARNING: Make sure the robot is hung up." << std::endl
              << "Press Enter to continue..." << std::endl;
    std::cin.ignore();

    control.InitCmdData(cmd);
    control.loop.RegistFunc("UDP/Send", RobotControl);
    control.loop.RegistFunc("UDP/Recv", UDPRecv);
    control.loop.Start();
    return 0; 
}
