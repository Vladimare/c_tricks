CC=g++
CFLAGS=-c -Wall
LDFLAGS=
BINDIR=./bin

all: rsqrt

RSQRT_SRC=rsqrt.c
RSQRT_OBJ=$(RSQRT_SRC:.c=.o)
RSQRT_EXE=rsqrt

$(RSQRT_EXE): $(RSQRT_OBJ)
	$(CC) $(RSQRT_OBJ) -o $(BINDIR)/$@

$(RSQRT_OBJ): $(RSQRT_SRC)
	$(CC) $(CFLAGS) $(RSQRT_SRC)

clean:
	rm *.o ./bin/*
