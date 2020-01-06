#include "libs/laikago_comm.h"
#include "libs/Robot.h"
#include <math.h>
#ifdef ROBOTSERVER

static long motiontime=0;
float torque = 0;

void Setup()
{
    SetLevel(LOWLEVEL);
    for( int Moi = 1; Moi<13; Moi++ ){
        SendLow.motorCmd[Moi].mode = 0x0A;   // motor switch to servo (PMSM) mode
    }
    return;
}

void RobotControl(void) 
{
    motiontime++;
    RobotStatus();

    // gravity compensation
    SendLow.motorCmd[FR_0].torque = -0.65f;
    SendLow.motorCmd[FL_0].torque = +0.65f;
    SendLow.motorCmd[RR_0].torque = -0.65f;
    SendLow.motorCmd[RL_0].torque = +0.65f;

    if( motiontime >= 500){
        torque = (0 - RecvLow.motorStatus[FL_1].position)*10.0f - (RecvLow.motorStatus[FL_1].velocity-0)*1.0f;
        if(torque > 5.0f) torque = 5.0f;
        if(torque < -5.0f) torque = -5.0f;

        SendLow.motorCmd[FL_1].position = PosStopF;
        SendLow.motorCmd[FL_1].velocity = VelStopF;
        SendLow.motorCmd[FL_1].positionStiffness = 0;
        SendLow.motorCmd[FL_1].velocityStiffness = 0;
        SendLow.motorCmd[FL_1].torque = torque;
    }
    PowerLimit(1);
}

int main(void) 
{
    Setup();
    ControlStart(); //start send and recv threads
    return 0; 
}

#else
#endif
