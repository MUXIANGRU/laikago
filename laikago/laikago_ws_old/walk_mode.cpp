#include "libs/laikago_comm.h"
#include "libs/Robot.h"
#include <math.h>
#ifdef ROBOTSERVER

static long motiontime = 0;
static float oldyaw = 0;

void Setup()   
{
    SetLevel(HIGHLEVEL);
    return;
}

void RobotControl(void) 
{
    motiontime = motiontime+2;
    RobotStatus();

    SendHigh.forwardSpeed = 0.0f;
    SendHigh.sideSpeed = 0.0f;
    SendHigh.rotateSpeed = 0.0f;
    SendHigh.forwardSpeed = 0.0f;

    SendHigh.mode = 0;
    SendHigh.roll  = 0;
    SendHigh.pitch = 0;
    SendHigh.yaw = 0;

    if(motiontime>1000 && motiontime<1500){
        SendHigh.roll = 0.5f;
    }

    if(motiontime>1500 && motiontime<2000){
        SendHigh.pitch = 0.3f;
    }

    if(motiontime>2000 && motiontime<2500){
        SendHigh.yaw = 0.3f;
    }

    if(motiontime>2500 && motiontime<3000){
        SendHigh.bodyHeight = -0.3f;
    }

    if(motiontime>3000 && motiontime<3500){
        SendHigh.bodyHeight = 0.3f;
    }

    if(motiontime>3500 && motiontime<4000){
        SendHigh.bodyHeight = 0.0f;
    }

    if(motiontime>4000 && motiontime<5000){
        SendHigh.mode = 2;
    }

    if(motiontime>5000 && motiontime<8500){
        SendHigh.forwardSpeed = 0.2f; // -1  ~ +1
    }

    if(motiontime>8500 && motiontime<12000){
        SendHigh.forwardSpeed = -0.2f; // -1  ~ +1
    }

    if(motiontime>12000 && motiontime<16000){
        oldyaw = RecvHigh.imu.rpy[2];
        if(fabs(RecvHigh.imu.rpy[2] - oldyaw) < 60) SendHigh.rotateSpeed = 0.5f;   // turn
    }

    if(motiontime>16000 && motiontime<20000){
        oldyaw = RecvHigh.imu.rpy[2];
        if(fabs(RecvHigh.imu.rpy[2] - oldyaw) < 60) SendHigh.rotateSpeed = -0.5f;   // turn
    }

    if(motiontime>20000 && motiontime<21000){
        SendHigh.mode = 1;
    }
}

int main(void) 
{
    Setup();
    ControlStart(); //start send and recv threads
    return 0; 
}

#else
#endif
