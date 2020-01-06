CC=g++
ROOT=$(shell pwd)
DEFINES=-D__linux__ -D_GUN_SOURCE -D_FRIEND_NOTIFY

CFLAGS= -lm -L/usr/local/lib -lrt -lpthread

LIB=$(ROOT)/libs/liblaikago_comm.so

EXE=$(ROOT)/position

INCLUDEDIR=-I$(ROOT)/../libs

SRC=position_mode.cpp
 
OBJ=${SRC:.cpp=.o}

all:
	-rm ${EXE} ${OBJ}
	${MAKE} ${EXE}
	@echo " +------------------------------------------------------+" 
	@echo " +                   build successful                   +"  
	@echo " +------------------------------------------------------+" 

${EXE}: ${OBJ} ${LIB}
	${CC} -o ${EXE} ${OBJ} ${LIB} ${CFLAGS}

.cpp.o:
	${CC} -O3 -g -w ${DEFINES} ${INCLUDEDIR} -c -o $@ $<

clean:
	rm -rf *.o
