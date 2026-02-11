CMD=cd 2.12 && make -f Makefile-docker

HASDOCKER := $(shell which ddocker)

ifeq ($(HASDOCKER),"")
BUILDING=nodocker
else
BUILDING=prepare iso
endif

all: $(BUILDING) #fail prepare iso

echo:
	echo test
	echo "-"$(HASDOCKER)"-"
	echo $(BUILDING)

prepare:
	install -d ${HOME}/2.12-modules/multilib
	install -d ${HOME}/2.12-modules/x86_64
	install -d ${HOME}/2.12-modules/ydfs
	install -d ${HOME}/2.12-modules/mate
	install -d ${HOME}/2.12-modules/kde
	install -d ${HOME}/iso

	chmod 777 ${HOME}/2.12-modules/multilib
	chmod 777 ${HOME}/2.12-modules/x86_64
	chmod 777 ${HOME}/2.12-modules/ydfs
	chmod 777 ${HOME}/2.12-modules/mate
	chmod 777 ${HOME}/2.12-modules/kde
	chmod 777 ${HOME}/iso

	$(CMD) buildenv-docker

sh:
	$(CMD) sh-docker

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

nodocker:
	cd 2.12 && make iso

multilib:
	$(CMD) multilib-docker

