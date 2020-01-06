#include "libs/laikago_comm.h"
#include "libs/Robot.h"
#include <math.h>
#ifdef ROBOTSERVER

static long motiontime = 0;
static float oldyaw = 0;
int flag = -1;

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

//    if(motiontime>1000 && motiontime<2000){
        SendHigh.mode = 2;
//    }


    if(motiontime>2000){
	if(flag > 0){
        	SendHigh.forwardSpeed = 0.02f; // -1  ~ +1
	} else {
		SendHigh.forwardSpeed = -0.02f;
	}

    }
    if(motiontime%1000 == 0){
	flag *= -1;
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
