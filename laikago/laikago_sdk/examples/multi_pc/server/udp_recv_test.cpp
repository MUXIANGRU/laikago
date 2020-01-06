/************************************************************************
Copyright (c) 2018-2019, Unitree Robotics.Co.Ltd. All rights reserved.
Use of this source code is governed by the MPL-2.0 license, see LICENSE.
************************************************************************/

#include "laikago_sdk/laikago_sdk.hpp"
#include <math.h>

using namespace laikago;

struct AAA{
    int direction;
    float deepth;
    uint32_t crc;
};

struct BBB{
    float yaw;
    float pitch;
    float roll;
    uint32_t crc;
};

AAA a = {0};
BBB b = {0};
LOOP loop;
UDP udp(8018, "192.168.2.101", 8017, sizeof(BBB), sizeof(AAA));

void UDPRecv()
{
    udp.Recv();
}

void UDPSend() 
{
    udp.GetState((char*)&a);
    // printf("%d\n", a.direction);

    b.yaw +=  1;
    b.pitch += 2;
    udp.Send((char*)&b);
}

int main(void) 
{
    loop.SetUDPPeriod(10000);
    loop.RegistFunc("UDP/Send", UDPSend);
    loop.RegistFunc("UDP/Recv", UDPRecv);
    loop.Start();

    return 0; 
}