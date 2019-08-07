PREFIX = /usr

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	cp -f stpv $(DESTDIR)$(PREFIX)/bin/
	cp -f stpvimg $(DESTDIR)$(PREFIX)/bin/
	cp -f fzfp $(DESTDIR)$(PREFIX)/bin/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/stpv
	rm -f $(DESTDIR)$(PREFIX)/bin/stpvimg
	rm -f $(DESTDIR)$(PREFIX)/bin/fzfp

.PHONY: install uninstall
