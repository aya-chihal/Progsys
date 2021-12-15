

all : run clean

run: $(APPLI)
	./$(APPLI)

$(APPLI) : $(APPLI).o Complexe.o
	gcc -Wall $(APPLI).o Complexe.o -o $(APPLI) -lm
$(APPLI).o : $(APPLI).c Complexe.h
	gcc -Wall -c $(APPLI).c
Complexe.o : Complexe.c Complexe.h
	gcc -Wall -c Complexe.c
#suppression des fichiers objet
clean : $(APPLI)
	rm -f *.o
	
