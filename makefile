SOURCES =$(wildcard *.c)
BCS = $(SOURCES:.c=.bc)

CLANG ?= clang-3.8
RM ?= rm

all : $(BCS)

%.bc: %.c
	$(CLANG) -emit-llvm -c -g -o $@ $<

clean :
	$(RM) *.bc
