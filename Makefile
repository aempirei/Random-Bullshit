CC = gcc
CCFLAGS = -Wall -W -I. -lm
CFLAGS = -Wall -W -I.
TARGETS = Random-Bullshit.pdf

.PHONY: all clean wipe

all: $(TARGETS)

Random-Bullshit.pdf: Random-Bullshit.dvi
	dvipdf $^

Random-Bullshit.dvi: Random-Bullshit.tex
	latex $^

clean:
	rm -f *.o *~

wipe: clean
	rm -f $(TARGETS)
