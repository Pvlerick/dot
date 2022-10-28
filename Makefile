.DEFAULT_GOAL := install

SHELL := /bin/bash
DST = /usr/bin/

install:
	cp -f dot ${DST}
	chmod +x ${DSL}dot

clean:
	rm ${DST}dot