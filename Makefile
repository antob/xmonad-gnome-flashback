DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/xmonad-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/xmonad-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/xmonad-gnome-flashback.desktop $(PREFIX)/share/applications/xmonad-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/xmonad-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/xmonad-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/xmonad-gnome-flashback-session $(PREFIX)/bin/xmonad-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/xmonad-gnome-flashback $(PREFIX)/bin/xmonad-gnome-flashback
	$(INSTALL) -m 0644 -D files/xmonad-gnome-flashback.gschema.override $(PREFIX)/share/glib-2.0/schemas/01_xmonad-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

uninstall:
	rm -f $(PREFIX)/bin/xmonad-gnome-flashback \
	      $(PREFIX)/bin/xmonad-gnome-flashback-session \
	      $(PREFIX)/share/gnome-session/sessions/xmonad-gnome-flashback.session \
	      $(PREFIX)/share/applications/xmonad-gnome-flashback.desktop \
	      $(PREFIX)/share/xsessions/xmonad-gnome-flashback-session.desktop \
	      $(PREFIX)/share/glib-2.0/schemas/01_xmonad-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

.PHONY: install uninstall
