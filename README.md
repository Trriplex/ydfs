# About musicOS

The ulitmate LiveUSB any musician should have to play music, even if no network is available !

> Get the code 

```
git clone https://github.com/linuxconsole-org/ydfs.git musicOS
cd musicOS
```

> Switch to 2.10-musicOS 

```
git branch -v -a
git checkout origin/2.10-Music
cd 2.10
```

# Docker Fast Build

> Prepare local folders
```
install -d $HOME/musicOS/x86_64
install -d $HOME/iso
install -d $HOME/musicOS/ydfs
install -d $HOME/musicOS/mate
install -d $HOME/musicOS/musicOS
chmod 777 $HOME/musicOS/x86_64
chmod 777 $HOME/iso
chmod 777 $HOME/musicOS/ydfs
chmod 777 $HOME/musicOS/mate
chmod 777 $HOME/musicOS/musicOS
```

> Build iso
```
docker compose run musicOS-2024-fast bash -c 'cp -a /2.10/ $HOME;cd $HOME/2.10; DISTRONAME="music" make iso'
```

> Verbose build iso
```
docker compose run musicOS-2024-fast bash -c 'cp -a /2.10/ $HOME;cd $HOME/2.10;DIBAB_VERBOSE_BUILD="YES" DISTRONAME="music" make iso'
```
