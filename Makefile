PREFIX    = /usr/local
BINPREFIX = $(DESTDIR)$(PREFIX)/bin

CWD = $(CURDIR)

install:
	mkdir -p $(BINPREFIX)
	cp -f stpv $(BINPREFIX)/
	cp -f stpvimg $(BINPREFIX)/
	cp -f stpvimgclr $(BINPREFIX)/
	cp -f fzfp $(BINPREFIX)/

link:
	mkdir -p $(BINPREFIX)
	ln -sf $(CWD)/stpv $(BINPREFIX)/
	ln -sf $(CWD)/stpvimg $(BINPREFIX)/
	ln -sf $(CWD)/stpvimgclr $(BINPREFIX)/
	ln -sf $(CWD)/fzfp $(BINPREFIX)/

uninstall:
	rm -f $(BINPREFIX)/stpv
	rm -f $(BINPREFIX)/stpvimg
	rm -f $(BINPREFIX)/stpvimgclr
	rm -f $(BINPREFIX)/fzfp

.PHONY: install link uninstall
