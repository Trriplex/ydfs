# About YDFS 2026

This branch is designed to build LinuxConsole 2026 ISO, modules and packages
![logo](/2.12/logos/linuxconsole.png)

# Building All (makes Iso)

```
make 
```
> Wait some long hours !

# Debug

```
make bash
BUILDME=OK make iso
```

> Try building manualy, report issue on https://github.com/linuxconsole-org/ydfs/issues


# Building - Step by step

> Activate local folder rights to be used with docker containers
```
make prepare
```

> Build Docker image

```
make docker
```

> Build iso
```
make iso
```

> Verbose build iso
```
make verbose-iso
```

# Tips
[tips](/TIPS.md)
