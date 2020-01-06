// file: listener.cpp
//
// LCM example program.
//
// compile with:
//  $ gcc -o listener listener.cpp -llcm
//
// On a system with pkg-config, you can also use:
//  $ gcc -o listener listener.cpp `pkg-config --cflags --libs lcm`

#include <stdio.h>

#include <lcm/lcm-cpp.hpp>
#include "exlcm/example_t.hpp"
#include <unistd.h>
#include <fcntl.h>

exlcm::example_t AAA;

class Handler {
  public:
    ~Handler() {}
    void handleMessage(const lcm::ReceiveBuffer *rbuf, const std::string &chan,
                       const exlcm::example_t *msg)
    // void handleMessage(const lcm::ReceiveBuffer *rbuf, const std::string &chan)
    {
        // exlcm::example_t *msg = NULL;
		// msg = (exlcm::example_t *)(rbuf->data);

        // printf("%lld\n", (long long) msg->timestamp);

        AAA = *msg;

        // AAA = *(exlcm::example_t *)(rbuf->data);

        int i;
        // printf("Received message on channel \"%s\":\n", chan.c_str());
        // printf("  timestamp   = %lld\n", (long long) msg->timestamp);
        // printf("  position    = (%f, %f, %f)\n", msg->position[0], msg->position[1],
        //        msg->position[2]);
        // printf("  orientation = (%f, %f, %f, %f)\n", msg->orientation[0], msg->orientation[1],
        //        msg->orientation[2], msg->orientation[3]);
        // printf("  ranges:");
        // for (i = 0; i < msg->num_ranges; i++)
        //     printf(" %d", msg->ranges[i]);
        // printf("\n");
        // printf("  name        = '%s'\n", msg->name.c_str());
        // printf("  enabled     = %d\n", msg->enabled);

        // printf("%lld\n", (long long) msg->timestamp);
    }
};

int main(int argc, char **argv)
{
    lcm::LCM lcm;
    int lcmfd;
    fd_set fdOverTime, fdClearBuf;  // set overtime
    struct timeval timeout, bufferClear;  

    if (!lcm.good())
        return 1;

    Handler handlerObject;
    lcm.subscribe("EXAMPLE", &Handler::handleMessage, &handlerObject);

    lcmfd = lcm.getFileno();
    printf("lcm fd %d\n", lcmfd);

    // while (0 == lcm.handle()) {
    
    //     // Do nothing
    //     // printf("1\n");
    //     sleep(1);
    // }

    int ret, nRet;


    while (1) {
        lcm.handleTimeout(2);

        FD_ZERO(&fdOverTime);  
        FD_SET(lcmfd, &fdOverTime);
        timeout.tv_sec = 0;  
        timeout.tv_usec = 2000-20;  
        FD_ZERO(&fdClearBuf);  
        FD_SET(lcmfd, &fdClearBuf);
        bufferClear.tv_sec = 0;  
        bufferClear.tv_usec = 0; 




        ret = select(lcmfd + 1, &fdOverTime, NULL, NULL, &timeout);    
        if(ret == 0) {  
            // res = -2;
            // UdpState.RecvLoseError++;
            printf("Error: Time out\n"); 
        } else {
            while(1){
                nRet = select(lcmfd + 1, &fdClearBuf, NULL, NULL, &bufferClear);
                if(nRet == 0)  break;
                // recv(lcmfd, &temp, sizeof(T), 0);
                lcm.handle();
            }
            printf("%lld\n", (long long) AAA.timestamp);  
        }

        sleep(1);
    }

    return 0;
}
