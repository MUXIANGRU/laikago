// file: send_message.cpp
//
// LCM example program.
//
// compile with:
//  $ g++ -o send_message send_message.cpp -llcm
//
// On a system with pkg-config, you can also use:
//  $ g++ -o send_message send_message.cpp `pkg-config --cflags --libs lcm`

// #include <lcm/lcm-cpp.hpp>
// #include "exlcm/example_t.hpp"
// #include <unistd.h>

// lcm::LCM myLCM;
// lcm::LogFile log("/home/unitree/lcm-1.4.0/examples/cpp/message.log", "w");
// lcm::LogEvent event;
// exlcm::example_t my_data, my_data1;

// int main(int argc, char **argv)
// {
//     if (!myLCM.good())
//         return 1;
//     if (!log.good()) {
//         perror("LogFile");
//         fprintf(stderr, "couldn't open log file %s\n", argv[1]);
//         return 1;
//     }

//     my_data.timestamp = 0;
//     my_data.position[0] = 1;
//     my_data.position[1] = 2;
//     my_data.position[2] = 3;
//     my_data.orientation[0] = 1;
//     my_data.orientation[1] = 0;
//     my_data.orientation[2] = 0;
//     my_data.orientation[3] = 0;
//     my_data.num_ranges = 15;
//     my_data.ranges.resize(my_data.num_ranges);
//     for (int i = 0; i < my_data.num_ranges; i++)
//         my_data.ranges[i] = i;
//     my_data.name = "example string";
//     my_data.enabled = true;
//     event.channel = "EXAMPLE";
//     event.datalen = my_data.getEncodedSize();

//     while(1){
//         myLCM.publish("EXAMPLE", &my_data);
//         my_data.encode(&my_data1, 0, event.datalen);
//         event.data = &my_data1;
//         log.writeEvent(&event);
//         usleep(100000);
//     }

//     return 0;
// }














// #include <lcm/lcm-cpp.hpp>
// #include "exlcm/example_t.hpp"
// #include <unistd.h>

// lcm::LCM myLCM;
// lcm::LogFile log("/home/unitree/lcm-1.4.0/examples/cpp/message.log", "w");
// lcm::LogEvent event;
// exlcm::example_t my_data;
// int j = 0;

// int main(int argc, char **argv)
// {
//     if (!myLCM.good())
//         return 1;
//     if (!log.good()) {
//         perror("LogFile");
//         fprintf(stderr, "couldn't open log file %s\n", argv[1]);
//         return 1;
//     }
//     my_data.timestamp = 0;
//     my_data.position[0] = 1;
//     my_data.position[1] = 2;
//     my_data.position[2] = 3;
//     my_data.orientation[0] = 1;
//     my_data.orientation[1] = 0;
//     my_data.orientation[2] = 0;
//     my_data.orientation[3] = 0;
//     my_data.num_ranges = 15;
//     my_data.ranges.resize(my_data.num_ranges);
//     for (int i = 0; i < my_data.num_ranges; i++)
//         my_data.ranges[i] = i;
//     my_data.name = "example string";
//     my_data.enabled = true;
//     event.channel = "EXAMPLE";
//     event.datalen = my_data.getEncodedSize();

//     // printf("%d %d \n", sizeof(my_data),event.datalen);
//     char* my_data_temp[event.datalen];

//     while(1){
//         my_data.timestamp = j;
//         printf("%d\n", j);
//         myLCM.publish("EXAMPLE", &my_data);
//         my_data.encode(my_data_temp, 0, event.datalen);
//         event.data = my_data_temp;
//         log.writeEvent(&event);
//         j++;
//         usleep(1000);
//     }

//     return 0;
// }







#include <lcm/lcm-cpp.hpp>
#include "exlcm/example_t.hpp"
#include <unistd.h>

lcm::LCM myLCM;
lcm::LogFile log("/home/unitree/lcm-1.4.0/examples/cpp/message.log", "w");
lcm::LogEvent event;
exlcm::example_t my_data;
int j = 0;

int main(int argc, char **argv)
{
    if (!myLCM.good())
        return 1;
    if (!log.good()) {
        perror("LogFile");
        fprintf(stderr, "couldn't open log file %s\n", argv[1]);
        return 1;
    }
    my_data.timestamp = 0;
    my_data.position[0] = 1;
    my_data.position[1] = 2;
    my_data.position[2] = 3;
    my_data.orientation[0] = 1;
    my_data.orientation[1] = 0;
    my_data.orientation[2] = 0;
    my_data.orientation[3] = 0;
    my_data.num_ranges = 15;
    my_data.ranges.resize(my_data.num_ranges);
    for (int i = 0; i < my_data.num_ranges; i++)
        my_data.ranges[i] = i;
    my_data.name = "example string";
    my_data.enabled = true;
    event.channel = "EXAMPLE";
    event.datalen = my_data.getEncodedSize();

    // printf("%d %d \n", sizeof(my_data),event.datalen);
    char* my_data_temp[event.datalen];

    while(1){
        my_data.timestamp = j;
        printf("%d\n", j);
        myLCM.publish("EXAMPLE", &my_data);
        my_data.encode(my_data_temp, 0, event.datalen);
        event.data = my_data_temp;
        log.writeEvent(&event);
        j++;
        usleep(1000);
    }

    return 0;
}
