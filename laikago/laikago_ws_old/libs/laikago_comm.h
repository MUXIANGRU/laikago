#ifndef __LAIKAGO_COMM_H__
#define __LAIKAGO_COMM_H__

#include <stdint.h>

//#define ROBOTCLIENT        // slave
#define ROBOTSERVER          // master
#define PRIORITY_CMD     99  // real-time priority
#define PRIORITY_STATUS  99
#define CPU_SEND  2          // cpu affinity
#define CPU_RECV  3
#define HIGHLEVEL 0x00
#define LOWLEVEL  0xff
#define PosStopF   (2.146E+9f)
#define VelStopF   (16000.0f)

typedef struct
{
	float x;
	float y;
	float z;
}Cartesian;

typedef struct
{
	float quaternion[4];   // quaternion
	float gyroscope[3];
	float acceleration[3];
    float rpy[3];          // euler angle（unit：degree）
    float temp;
}IMU;   // when under accelerated motion, the attitude of the robot calculated by IMU will drift.

typedef struct
{
	uint8_t r;
	uint8_t g;
	uint8_t b;
}LED;   // foot led brightness: 0~255

typedef struct
{
	uint8_t mode;          // motor working mode 
	float position;        // current angle (unit: radian)
	float velocity;        // current velocity (unit: radian/second)
	float torque;          // current estimated output torque (unit: N.m)
	float temperature;     // current temperature (temperature conduction is slow that leads to lag)
	int iReserve;
	float fReserve;
}MotorStatus;   // motor feedback

typedef struct
{
	uint8_t mode;               // target working mode
	float position;             // target angle (unit: radian) 
	float velocity;             // target velocity (unit: radian/second)
	float positionStiffness;    // target position stiffness
	float velocityStiffness;    // target velocity stiffness
	float torque;               // target output torque (unit: N.m)
}MotorCmd;     // motor control

typedef struct
{
	uint8_t levelF;                // flag to distinguish high level or low level 
	IMU imu;
	MotorStatus motorStatus[20];
	float footForce[4];            // force sensors
    uint32_t tick;                 // reference real-time from motion controller
	uint8_t wirelessRemote[40];    // wireless commands
  	uint32_t crc;
}LowStatus;       // low level feedback

typedef struct 
{
	uint8_t levelF;
	MotorCmd motorCmd[20];
	LED led[4];
	uint8_t wirelessRemote[40];
  	uint32_t crc;
}LowCmd;       // low level control

typedef struct
{
	uint8_t levelF;
	uint8_t mode;
	IMU imu;
	float forwardSpeed;               // speed of move forward or backward, scale: -1~1
	float sideSpeed;                  // speed of move left or right, scale: -1~1
	float rotateSpeed;                // speed of spin left or right, scale: -1~1
	float bodyHeight;                 // body height, scale: -1~1
	float updownSpeed;                // speed of stand up or squat down, scale: -1~1
	Cartesian forwardPosition;        // front or rear displacement, an integrated number form kinematics function, usually drift
	Cartesian sidePosition;           // left or right displacement, an integrated number form kinematics function, usually drift
	Cartesian footPosition2Body[4];   // foot position relative to body
	Cartesian footSpeed2Body[4];      // foot speed relative to body
	float footForce[4];
    uint32_t tick;
	uint8_t wirelessRemote[40];
  	uint32_t crc;
}HighStatus;     // high level feedback

typedef struct 
{
	uint8_t levelF;
	uint8_t mode;
	float forwardSpeed;
	float sideSpeed;
	float rotateSpeed;	
	float bodyHeight;
	float footRaiseHeight;            // foot up height while walking (unavailable now)
	float yaw;                        // (unit: radian)
	float pitch;                      // (unit: radian)
	float roll;                       // (unit: radian)
	LED led[4];
	uint8_t wirelessRemote[40];
  	uint32_t crc;
}HighCmd;       // high level control

typedef struct     
{
	unsigned long long TotalCount;    // total loop count
	unsigned long long SendCount;     // total send count
	unsigned long long RecvCount;     // total receive count
	unsigned long long SendError;     // total send error 
	unsigned long long FlagError;     // total flag error 
	unsigned long long RecvCRCError;  // total reveive CRC error	
	unsigned long long RecvLoseError; // total lose package count	
}UDPState;     // UDP communication status

extern UDPState UdpState;           
extern HighCmd SendHigh;
extern LowCmd SendLow;
extern HighStatus RecvHigh;
extern LowStatus RecvLow;

void SetLevel(uint8_t level);
uint8_t GetLevel();
void RobotStatus();
int ControlStart(void);
void RobotControl(void);
void JointLimit();      // only effect under Low Level control in Position mode
void PowerLimit(int);   /* only effect under Low Level control, input factor: 1~10, means 10%~100% power limit.
						   if you are new, then use 1; if you are familiar, then can try bigger number or even comment this function. */

#endif
