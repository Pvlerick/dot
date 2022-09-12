.DEFAULT_GOAL := install

SHELL := /bin/bash
DST = /usr/bin/

install:
	cp -f dot ${DST}

clean:
	rm ${DST}dot