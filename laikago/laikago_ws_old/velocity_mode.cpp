#include "libs/laikago_comm.h"
#include "libs/Robot.h"
#include <math.h>
#ifdef ROBOTSERVER

static long motiontime=0;
float Kv = 0.08;
float speed = 0;
unsigned long int Tpi =0;

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
        SendLow.motorCmd[FL_2].position = PosStopF;
        SendLow.motorCmd[FL_2].velocity = speed;
        SendLow.motorCmd[FL_2].positionStiffness = 0;
        SendLow.motorCmd[FL_2].velocityStiffness = Kv;
        SendLow.motorCmd[FL_2].torque = 0.0f;
        Tpi++;
        // try 1 or 3
        speed = 1 * sin(4*M_PI*Tpi/1000.0);
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
