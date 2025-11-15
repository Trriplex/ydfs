CMD=cd 2.10 && make -f Makefile-docker

all: prepare packages kde mate kodi

prepare:
	install -d ${HOME}/2.10-modules/x86_64
	install -d ${HOME}/iso
	install -d ${HOME}/2.10-modules/ydfs
	install -d ${HOME}/2.10-modules/opkg
	install -d ${HOME}/2.10-modules/kde
	install -d ${HOME}/2.10-modules/mate
	install -d ${HOME}/2.10-modules/kodi
	install -d ${HOME}/2.10-modules/virtualbox
	install -d ${HOME}/2.10-modules/erp
	install -d ${HOME}/2.10-modules/devtools

	chmod 777 ${HOME}/2.10-modules/x86_64
	chmod 777 ${HOME}/iso
	chmod 777 ${HOME}/2.10-modules/ydfs
	chmod 777 ${HOME}/2.10-modules/opkg
	chmod 777 ${HOME}/2.10-modules/kde
	chmod 777 ${HOME}/2.10-modules/mate
	chmod 777 ${HOME}/2.10-modules/kodi
	chmod 777 ${HOME}/2.10-modules/virtualbox
	chmod 777 ${HOME}/2.10-modules/erp
	chmod 777 ${HOME}/2.10-modules/devtools

	$(CMD) buildenv-docker

bash:
	$(CMD) bash-docker

opkg: packages

packages:
	$(CMD) opkg-docker

kde:
	$(CMD) kde-docker

kodi:
	$(CMD) kodi-docker

mate:
	$(CMD) mate-docker

virtualbox:
	$(CMD) virtualbox-docker

iso:
	$(CMD) iso-docker

updates:
	$(CMD) updates-docker

live-test:
	$(CMD) live-test-docker

erp:
	$(CMD) erp-docker

iso-devtools:
	$(CMD) iso-devtools-docker
