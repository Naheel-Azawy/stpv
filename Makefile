PREFIX = /usr/local

CWD = $(CURDIR)

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	cp -f stpv $(DESTDIR)$(PREFIX)/bin/
	cp -f stpvimg $(DESTDIR)$(PREFIX)/bin/
	cp -f stpvimgclr $(DESTDIR)$(PREFIX)/bin/
	cp -f fzfp $(DESTDIR)$(PREFIX)/bin/

link:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	ln -sf $(CWD)/stpv $(DESTDIR)$(PREFIX)/bin/
	ln -sf $(CWD)/stpvimg $(DESTDIR)$(PREFIX)/bin/
	ln -sf $(CWD)/stpvimgclr $(DESTDIR)$(PREFIX)/bin/
	ln -sf $(CWD)/fzfp $(DESTDIR)$(PREFIX)/bin/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/stpv
	rm -f $(DESTDIR)$(PREFIX)/bin/stpvimg
	rm -f $(DESTDIR)$(PREFIX)/bin/stpvimgclr
	rm -f $(DESTDIR)$(PREFIX)/bin/fzfp

.PHONY: install uninstall
