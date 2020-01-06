#ifndef __ROBOT_H__
#define __ROBOT_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// coordinates
#define X_       0
#define Y_       1
#define Z_       2

// Notice: All of the matrixs equal to two-dimensional arrays,
//         All of the vectors equal to two-dimensional array (column vector) 
#define MatrixE             {{1,0,0},{0,1,0},{0,0,1}}   // identity matrix
#define VectorZero          {0,0,0}                     // zero vector
#define MYWidth_Hips        (0.175f)                    // leg interval (unit: m)
#define MYLength_Thigh      (0.25f)                     // thigh length
#define MYLength_Calf       (0.25f)                     // calf length
#define MYBodyLength        (0.432f)                    // length of front legs and rear legs
#define MYLegOffset         (0.0345f)                   // distance of thigh offset from hip axis
#define MYRockerLength      (0.03f)                     // rocker arm length

// definition of each leg and joint
#define FR_    0       // leg index
#define FL_    1
#define RR_    2
#define RL_    3

#define FR_0   1      // joint index
#define FR_1   2      
#define FR_2   3

#define FL_0   4
#define FL_1   5
#define FL_2   6

#define RR_0   7
#define RR_1   8
#define RR_2   9

#define RL_0   10
#define RL_1   11
#define RL_2   12

#define Hip_max    1.047    // unit:radian (= 60   degree)
#define Hip_min    -0.873   // unit:radian (= -50  degree)
#define Thigh_max  3.927    // unit:radian (= 225  degree)
#define Thigh_min  -0.524   // unit:radian (= -30  degree)
#define Calf_max   -0.611   // unit:radian (= -35  degree)
#define Calf_min   -2.775   // unit:radian (= -159 degree)

#endif
