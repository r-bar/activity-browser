INSTALL_PATH ?= ${HOME}/.local
.DEFAULT: install

.PHONY: install
install:
	install -m 755 -D activity-browser ${INSTALL_PATH}/bin
	install -D activity-browser.desktop ${INSTALL_PATH}/share/applications
