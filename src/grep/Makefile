.PHONY: all clean check test sfleta_grep
CC=gcc -std=c11
CC2=gcc -std=c11 -D_GNU_Source
LDFLAGS= -Wall -Wextra -Werror
OS := $(shell uname -s)

default: all

all: sfleta_grep

sfleta_grep: clean
ifeq ($(OS), Darwin)
	$(CC) $(LDFLAGS) *.c -o sfleta_grep	
else
	$(CC2) $(LDFLAGS) *.c -o sfleta_grep
endif

clean:
	rm -rf sfleta_grep
	rm -rf *_out
	rm -rf *.dSYM
	rm -rf *.cfg
	rm -rf *.a
	rm -rf *.o
	rm -rf *.out
	rm -rf *.gcno
	rm -rf *.gcda
	rm -rf *.cov
	rm -rf *.info
	rm -rf report

test:
	sh test_grep.sh

debug:
	$(CC2) -g -Og -o sfleta_grep sfleta_grep.c 

style:
	cppcheck *.h *.c
	cp ../../materials/linters/CPPLINT.cfg CPPLINT.cfg
	python3 ../../materials/linters/cpplint.py --extension=c *.c *.h

check: debug style
ifeq ($(OS), Darwin)
	CK_FORK=no leaks --atExit -- ./sfleta_grep
else
	valgrind -q --tool=memcheck --leak-check=full --leak-resolution=med ./sfleta_grep
endif