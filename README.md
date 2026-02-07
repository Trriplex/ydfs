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
```

# Docker Fast Build

> Prepare local folders, replace kde with your module name
```
make prepare
```


> Build packages
```
make packages
```

> Build a module
> In 2.10/docker-compose.yml, change kde with you module name
```
make kde
```

> Build iso
```
make iso
```

> Verbose build iso
```
make verbose-iso
```
