CC = gcc
CFALGS = -g -O2

fact: fact.o
	$(CC) -o fact fact.o 

clean:
	rm -rf *.o fact

install:
	cp -f fact /usr/bin/




