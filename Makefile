#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

PATH_COMPTON = $(PREFIX)/etc/xdg/compton.conf

#
# Targets
#

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D configs/compton/compton.conf $(PATH_COMPTON)
	
uninstall:
	rm -f $(PATH_COMPTON)

.PHONY: all install uninstall
