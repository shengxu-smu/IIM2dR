SRCS = $(wildcard *.f)
OBJS = $(SRCS:.f=.o)
INCS = $(wildcard *.inc)

FC=gfortran
FFLAGS=-g -O3

iim2dinv: $(SRCS) $(INCS) makefile
	$(FC) $(FFLAGS) $(SRCS) $(MKL)$ $(LIBS) -o $@
	strip $@

clean:
	rm -rf *.o
	rm *~
