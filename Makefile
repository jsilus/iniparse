.PHONY: install uninstall

INSTALL_DIR=/usr/local/bin

install:
	install -m 557 iniparse $(INSTALL_DIR)

uninstall:
	rm -f $(INSTALL_DIR)/iniparse
