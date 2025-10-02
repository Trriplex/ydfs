all: prepare kde mate

prepare:
	install -d ${HOME}/2.10-modules/x86_64
	install -d ${HOME}/iso
	install -d ${HOME}/2.10-modules/ydfs
	install -d ${HOME}/2.10-modules/kde
	install -d ${HOME}/2.10-modules/mate
	install -d ${HOME}/2.10-modules/virtualbox

	chmod 777 ${HOME}/2.10-modules/x86_64
	chmod 777 ${HOME}/iso
	chmod 777 ${HOME}/2.10-modules/ydfs
	chmod 777 ${HOME}/2.10-modules/kde
	chmod 777 ${HOME}/2.10-modules/mate
	chmod 777 ${HOME}/2.10-modules/virtualbox

bash:
	cd 2.10 && make -f Makefile-docker bash-docker

packages:
	cd 2.10 && make -f Makefile-docker opkg-docker

kde:
	cd 2.10 && make -f Makefile-docker kde-docker

mate:
	cd 2.10 && make -f Makefile-docker mate-docker

virtualbox:
	cd 2.10 && make -f Makefile-docker virtualbox-docker

