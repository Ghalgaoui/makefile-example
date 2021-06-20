CC ?= gcc
CFLAGS += -Wall
DESTDIR ?= /usr/local/bin/

EXE = fact

OBJS = fact.o

.PHONY: all

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $<

.o:.c
	$(CC) $(CFLAGS) -c $^

.PHONY: clean

clean:
	rm -f *.o $(EXE)


.PHONY: install

install: $(EXE)
	install -m 0755 -d ${DESTDIR}
	install -m 0755 ${EXE} ${DESTDIR}

