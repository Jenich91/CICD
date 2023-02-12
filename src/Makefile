.PHONY: all clean check test sfleta_cat sfleta_grep

default: all

all: sfleta_cat sfleta_grep

sfleta_cat:
	make sfleta_cat -C cat/

sfleta_grep:
	make sfleta_grep -C grep/

clean:
	make clean -C cat/
	make clean -C grep/

test:
	make test -C cat/
	make test -C grep/

style:
	make style -C cat/
	make style -C grep/

check:
	make check -C cat/
	make check -C grep/
