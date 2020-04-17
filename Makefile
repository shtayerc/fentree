PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install fentree

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p fentree $(DESTDIR)$(PREFIX)/bin/fentree
	@cp -p fentree.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/fentree

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/fentree
	@rm -f $(DESTDIR)$(MANDIR)/man1/fentree.1
