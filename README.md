# About 2.10-modules

This branch is designed to build modules and packages for the 2.10 branch and LinuxConsole 2024

> Get the code 

```
git clone https://github.com/linuxconsole-org/ydfs.git 2.10-modules
cd 2.10-modules
```

> Switch to 2.10-modules

```
git fetch -a
git checkout 2.10-modules
cd 2.10
```

# Docker Fast Build

> Prepare local folders, replace kde with your module name
```
install -d $HOME/2.10-modules/x86_64
install -d $HOME/iso
install -d $HOME/2.10-modules/ydfs
install -d $HOME/2.10-modules/kde

chmod 777 $HOME/2.10-modules/x86_64
chmod 777 $HOME/iso
chmod 777 $HOME/2.10-modules/ydfs
chmod 777 $HOME/2.10-modules/kde
```

> In 2.10/docker-compose.yml, change kde with you module name

> Build packages
```
docker-compose run -t -i ydfs2.10-modules-fast bash -c 'cp -a /2.10/ $HOME;cd $HOME/2.10; DISTRONAME=all BUILDOPKG=YES YDFS_ARCH=x86_64 make opkg'
```

> Build a module
```
docker compose run ydfs2.10-modules-fast bash -c 'cp -a /2.10/ $HOME;cd $HOME/2.10; make kde'
```

> Verbose build iso
```
docker compose run ydfs2.10-modules-fast bash -c 'cp -a /2.10/ $HOME;cd $HOME/2.10;DIBAB_VERBOSE_BUILD="YES"  make kde'
```
