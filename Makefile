PREFIX = /usr/local

install:
	mkdir -p $(PREFIX)/bin
	cp -f taski $(PREFIX)/bin
	cp -rf search/* $(PREFIX)/bin
	cp -rf record/* $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/mdocs $(PREFIX)/bin/msearch $(PREFIX)/bin/zdocs $(PREFIX)/bin/taski $(PREFIX)/bin/viper

uninstall:
	rm -f $(PREFIX)/bin/mdocs $(PREFIX)/bin/zdocs $(PREFIX)/bin/msearch $(PREFIX)/bin/taski $(PREFIX)/bin/viper
