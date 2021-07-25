INSTALL_PATH ?= ${HOME}/.local
.DEFAULT: install

.PHONY: install
install:
	mkdir -p ${INSTALL_PATH}/bin
	install -m 755 activity-browser ${INSTALL_PATH}/bin
	mkdir -p ${INSTALL_PATH}/share/applications
	install activity-browser.desktop ${INSTALL_PATH}/share/applications
