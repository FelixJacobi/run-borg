ifeq ($(PREFIX),)
    PREFIX := /usr/local
endif

install:
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -d $(DESTDIR)$(PREFIX)/sbin/
	install -m 755 pts-wall $(DESTDIR)$(PREFIX)/bin/
	install -m 755 run-borg $(DESTDIR)$(PREFIX)/sbin/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/pts-wall
	rm -f $(DESTDIR)$(PREFIX)/sbin/run-borg
	rmdir --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/bin
	rmdir --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/sbin
