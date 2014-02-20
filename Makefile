MANPAGE=man/git-pick.7

.PHONY: install clean

$(MANPAGE): man/git-pick.7.md
	@pandoc -s -t man -o $@ $<

install: git-pick $(MANPAGE)
	@mkdir -p $(DESTDIR)/bin
	@mkdir -p $(DESTDIR)/share/man/man7
	@cp git-pick $(DESTDIR)/bin
	@cp $(MANPAGE) $(DESTDIR)/share/man/man7/

clean:
	@rm -f $(MANPAGE)
