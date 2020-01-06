/************************************************************************
Copyright (c) 2018-2019, Unitree Robotics.Co.Ltd. All rights reserved.
Use of this source code is governed by the MPL-2.0 license, see LICENSE.
************************************************************************/

#include "laikago_sdk/laikago_sdk.hpp"
#include <math.h>

using namespace laikago;

HighCmd cmd = {0};
HighState state = {0};
Control control(HIGHLEVEL);
UDP udp(HIGH_CMD_LENGTH, HIGH_STATE_LENGTH);
LCM mylcm;

void UDPRecv()
{
    udp.Recv();
}

void LCMRecv()
{
    mylcm.Recv();
}

void RobotControl() 
{
    udp.GetState(state);
    mylcm.Send(state);
    // printf("%f\n", state.forwardSpeed);
    mylcm.Get(cmd);
    udp.Send(cmd);
}

int main(void) 
{
    control.loop.SetLCM(true);
    control.loop.SetLCMPeriod(4000); //4ms
    mylcm.SubscribeCmd();
    control.InitCmdData(cmd);
    control.loop.RegistFunc("UDP/Send", RobotControl);
    control.loop.RegistFunc("UDP/Recv", UDPRecv);
    control.loop.RegistFunc("LCM/Recv", LCMRecv);
    control.loop.Start();
    return 0; 
}
