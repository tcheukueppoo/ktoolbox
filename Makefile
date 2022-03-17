PREFIX = /usr/local

install:
	mkdir -p $(PREFIX)/bin
	cp -f taski $(PREFIX)/bin
	cp -rf search/* $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/mdocs $(PREFIX)/bin/msearch $(PREFIX)/bin/zdocs

uninstall:
	rm -f $(PREFIX)/bin/mdocs $(PREFIX)/bin/zdocs $(PREFIX)/bin/msearch $(PREFIX)/bin/taski
