ifeq ($(PREFIX),)
    PREFIX := /usr/local
endif

install:
	install -d $(DESTDIR)/etc/borg/
	install -d $(DESTDIR)/etc/borg/pre.d/
	install -d $(DESTDIR)/etc/borg/post.d/
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -d $(DESTDIR)$(PREFIX)/sbin/
	install -m 755 pts-wall $(DESTDIR)$(PREFIX)/bin/pts-wall
	install -m 755 run-borg $(DESTDIR)$(PREFIX)/sbin/run-borg

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/pts-wall
	rm -f $(DESTDIR)$(PREFIX)/sbin/run-borg
	rmdir --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/bin
	rmdir --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/sbin
	rmdir --ignore-fail-on-non-empty $(DESTDIR)/etc/borg/pre.d/
	rmdir --ignore-fail-on-non-empty $(DESTDIR)/etc/borg/post.d/
	rmdir --ignore-fail-on-non-empty $(DESTDIR)/etc/borg/
