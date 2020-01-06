#include "libs/laikago_comm.h"
#include "libs/Robot.h"
#include <math.h>
#ifdef ROBOTSERVER

static long motiontime = 0;
float Kv[3] = {0};  
float Kp[3] = {0};
float movejoint1 = 0, movejoint2 = 0;
unsigned long int Tpi = 0;

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
        

        SendLow.motorCmd[FL_0].position = 0.0;
        SendLow.motorCmd[FL_0].velocity = 0;
        SendLow.motorCmd[FL_0].positionStiffness = Kp[0];
        SendLow.motorCmd[FL_0].velocityStiffness = Kv[0];
        SendLow.motorCmd[FL_0].torque = 0.65f;

        SendLow.motorCmd[FL_1].position = 0.5 + movejoint2;
        SendLow.motorCmd[FL_1].velocity = 0;
        SendLow.motorCmd[FL_1].positionStiffness = Kp[1];
        SendLow.motorCmd[FL_1].velocityStiffness = Kv[1];
        SendLow.motorCmd[FL_1].torque = 0.0f;

        SendLow.motorCmd[FL_2].position =  -1.1 + movejoint1;
        SendLow.motorCmd[FL_2].velocity = 0;
        SendLow.motorCmd[FL_2].positionStiffness = Kp[2];
        SendLow.motorCmd[FL_2].velocityStiffness = Kv[2];
        SendLow.motorCmd[FL_2].torque = 0.0f;

        SendLow.motorCmd[FR_0].position = 0.0;
        SendLow.motorCmd[FR_0].velocity = 0;
        SendLow.motorCmd[FR_0].positionStiffness = Kp[0];
        SendLow.motorCmd[FR_0].velocityStiffness = Kv[0];
        SendLow.motorCmd[FR_0].torque = 0.65f;

        SendLow.motorCmd[FR_1].position = 0.5 + movejoint2;
        SendLow.motorCmd[FR_1].velocity = 0;
        SendLow.motorCmd[FR_1].positionStiffness = Kp[1];
        SendLow.motorCmd[FR_1].velocityStiffness = Kv[1];
        SendLow.motorCmd[FR_1].torque = 0.0f;

        SendLow.motorCmd[FR_2].position =  -1.1 + movejoint1;
        SendLow.motorCmd[FR_2].velocity = 0;
        SendLow.motorCmd[FR_2].positionStiffness = Kp[2];
        SendLow.motorCmd[FR_2].velocityStiffness = Kv[2];
        SendLow.motorCmd[FR_2].torque = 0.0f;

        SendLow.motorCmd[RL_0].position = 0.0;
        SendLow.motorCmd[RL_0].velocity = 0;
        SendLow.motorCmd[RL_0].positionStiffness = Kp[0];
        SendLow.motorCmd[RL_0].velocityStiffness = Kv[0];
        SendLow.motorCmd[RL_0].torque = 0.65f;

        SendLow.motorCmd[RL_1].position = 0.5 + movejoint2;
        SendLow.motorCmd[RL_1].velocity = 0;
        SendLow.motorCmd[RL_1].positionStiffness = Kp[1];
        SendLow.motorCmd[RL_1].velocityStiffness = Kv[1];
        SendLow.motorCmd[RL_1].torque = 0.0f;

        SendLow.motorCmd[RL_2].position =  -1.1 + movejoint1;
        SendLow.motorCmd[RL_2].velocity = 0;
        SendLow.motorCmd[RL_2].positionStiffness = Kp[2];
        SendLow.motorCmd[RL_2].velocityStiffness = Kv[2];
        SendLow.motorCmd[RL_2].torque = 0.0f;

        SendLow.motorCmd[RR_0].position = 0.0;
        SendLow.motorCmd[RR_0].velocity = 0;
        SendLow.motorCmd[RR_0].positionStiffness = Kp[0];
        SendLow.motorCmd[RR_0].velocityStiffness = Kv[0];
        SendLow.motorCmd[RR_0].torque = 0.65f;

        SendLow.motorCmd[RR_1].position = 0.5 + movejoint2;
        SendLow.motorCmd[RR_1].velocity = 0;
        SendLow.motorCmd[RR_1].positionStiffness = Kp[1];
        SendLow.motorCmd[RR_1].velocityStiffness = Kv[1];
        SendLow.motorCmd[RR_1].torque = 0.0f;

        SendLow.motorCmd[RR_2].position =  -1.1 + movejoint1;
        SendLow.motorCmd[RR_2].velocity = 0;
        SendLow.motorCmd[RR_2].positionStiffness = Kp[2];
        SendLow.motorCmd[RR_2].velocityStiffness = Kv[2];
        SendLow.motorCmd[RR_2].torque = 0.0f;


    }
    JointLimit();
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
