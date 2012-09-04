LIBS = -lrt
CC = gcc
CFLAGS = -I$(JAVA_HOME)/include -O1 -g1 -DSKIP_NPT=1 -DLINUX=1 -fPIC -D_GNU_SOURCE=1

SRC := $(shell ls *.c)
OBJ := $(foreach src,$(SRC),$(subst .c,.o,$(src)))

hprof.so : ${OBJ}
	${CC} -shared -o $@ $^

clean: 
	rm -f *.o *.so
