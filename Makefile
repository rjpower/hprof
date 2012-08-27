LIBS = -lrt
CC = gcc
CFLAGS = -I$(JAVA_HOME)/include -O2 -g2 -DSKIP_NPT=1 -DLINUX=1 -fPIC

SRC := debug_malloc.c hprof_blocks.c hprof_check.c hprof_class.c hprof_cpu.c \
  hprof_error.c hprof_event.c hprof_frame.c hprof_init.c hprof_io.c \
  hprof_ioname.c hprof_listener.c hprof_loader.c hprof_monitor.c \
  hprof_object.c hprof_reference.c hprof_site.c hprof_stack.c hprof_string.c \
  hprof_table.c hprof_tag.c hprof_tls.c hprof_trace.c hprof_tracker.c \
  hprof_util.c 

OBJ := $(foreach src,$(SRC),$(subst .c,.o,$(src)))

hprof.so : ${OBJ}
	${CC} -shared -o $@ $^

clean: 
	rm -f *.o *.so
