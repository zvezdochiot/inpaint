CC=g++ 
CCOPT=g++ -O3
CFLAGS=-W -Wall -pedantic
LDFLAGS= -lX11 -lpthread
SRCS= src
EXEC=inpaint

all: inpainting.o
	$(CCOPT) -o $(EXEC) inpainting.o $(CFLAGS) $(LDFLAGS)

inpainting.o: $(SRCS)/inpainting.cpp $(SRCS)/inpainting.h $(SRCS)/progressbar.h
	$(CCOPT) -o inpainting.o -c $(SRCS)/inpainting.cpp $(CFLAGS)

clean:
	rm -f *.c~ *.h~ *.cpp~ *.ini~ *.o makefile~ $(EXEC)
