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
	latex $^

clean:
	rm -f *.o *~ Random-Bullshit.dvi Random-Bullshit.aux Random-Bullshit.log

wipe: clean
	rm -f $(TARGETS)
