INSTALL_PATH ?= ${HOME}/.local
.DEFAULT: install


.PHONY: install
install:
	install -m 755 -D activity-browser ${INSTALL_PATH}/bin
	install -D activity-browser.desktop ${INSTALL_PATH}/share/applications


.PHONY: uninstall
uninstall:
	rm ${INSTALL_PATH}/bin/activity-browser
	rm ${INSTALL_PATH}/share/applications/activity-browser.desktop
