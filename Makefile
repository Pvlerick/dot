.DEFAULT_GOAL := install

SHELL := /bin/bash
DST = /usr/bin/

install:
	cp -f dot ${DST}
	chmod +x ${DST}dot

clean:
	rm ${DST}dot