OBJECTS = UseComplexe.o Complexe.o
CC = gcc
CFLAGS = -Wall -g
UseComplexe : $(OBJETS)
	$(CC) $(CFLAGS) $(OBJECTS) -o UseComplexe -lm
UseComplexe.o : UseComplexe.c Complexe.h
	$(CC) $(CFLAGS) -c UseComplexe.c
Complexe.o : Complexe.c Complexe.h
	$(CC) $(CFLAGS) -c Complexe.c
