CMD=cd 2.12 && make -f Makefile-docker

all: prepare packages # kde mate kodi

prepare:
	install -d ${HOME}/2.12-modules/x86_64
	install -d ${HOME}/iso
	install -d ${HOME}/2.12-modules/ydfs
	install -d ${HOME}/2.12-modules/opkg
	install -d ${HOME}/2.12-modules/kde
	install -d ${HOME}/2.12-modules/mate
	install -d ${HOME}/2.12-modules/kodi
	install -d ${HOME}/2.12-modules/virtualbox
	install -d ${HOME}/2.12-modules/openxr
	install -d ${HOME}/2.12-modules/devtools

	chmod 777 ${HOME}/2.12-modules/x86_64
	chmod 777 ${HOME}/iso
	chmod 777 ${HOME}/2.12-modules/ydfs
	chmod 777 ${HOME}/2.12-modules/opkg
	chmod 777 ${HOME}/2.12-modules/kde
	chmod 777 ${HOME}/2.12-modules/mate
	chmod 777 ${HOME}/2.12-modules/kodi
	chmod 777 ${HOME}/2.12-modules/virtualbox
	chmod 777 ${HOME}/2.12-modules/openxr
	chmod 777 ${HOME}/2.12-modules/devtools

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

test-devtools:
	cd 2.12 && YDFS_ARCH=x86_64 DISTRONAME=devtools make config.ini && scripts/make_test
	cd 2.12 && rm config.ini

openxr:
	$(CMD) openxr-docker

iso-devtools:
	$(CMD) iso-devtools-docker

qemu:
	qemu-system-x86_64 -m size=2000 -bios 2.12/boot-efi/bios/qemu-ovmf/bios/bios.bin -cdrom /home/yann/iso/linuxconsole.iso
