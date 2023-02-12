.PHONY: all clean check test sfleta_cat
CC=gcc -std=c11
CC2=gcc -std=c11 -D_GNU_Source
LDFLAGS= -Wall -Wextra -Werror
OS := $(shell uname -s)

default: all

all: sfleta_cat

sfleta_cat: clean
ifeq ($(OS), Darwin)
	$(CC) $(LDFLAGS) *.c -o sfleta_cat	
else
	$(CC2) $(LDFLAGS) *.c -o sfleta_cat
endif

clean:
	rm -rf sfleta_cat
	rm -rf *_out
	rm -rf *.dSYM
	rm -rf *.cfg
	rm -rf *.a
	rm -rf *.o
	rm -rf *.gcno
	rm -rf *.gcda
	rm -rf *.cov
	rm -rf *.info
	rm -rf report

test:
	sh test_cat.sh

debug:
	$(CC2) -g -Og -o sfleta_cat sfleta_cat.c 

style:
	cppcheck *.h *.c
	cp ../../materials/linters/CPPLINT.cfg CPPLINT.cfg
	python3 ../../materials/linters/cpplint.py --extension=c *.c *.h

check: debug style
ifeq ($(OS), Darwin)
	CK_FORK=no leaks --atExit -- ./sfleta_cat
else
	valgrind -q --tool=memcheck --leak-check=full --leak-resolution=med ./sfleta_cat
endif