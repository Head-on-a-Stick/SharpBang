# SharpBang GNU/Linux

[![Build Status](https://travis-ci.com/Head-on-a-Stick/SharpBang.svg?branch=master)](https://travis-ci.com/Head-on-a-Stick/SharpBang)

[![2019-10-22-191620-1024x768-scrot.png](https://i.postimg.cc/3wvjkRHv/2019-10-22-191620-1024x768-scrot.png)](https://postimg.cc/R3vJ8vhS)

SharpBang (♯!) is a live ISO image that can be used to install a pre-configured Openbox/Tint2 desktop running on Debian stable.

The live-build system is used to create the ISO, just like the official Debian images. A full suite of rescue & recovery tools are included in the live environment and a rescue mode is accessible from the boot menu which can be used to open a shell in an installed system.

Documentation: https://live-team.pages.debian.net/live-manual/

### Build Instructions

Change into the **buster** directory then run:
```
lb clean --purge
lb config
lb build
```
Use `cp` to transfer the image to a USB stick:
```
cp sharpbang-buster.img /dev/sdX ; sync
```
The username for the live system is *user* and the password is *live*.

### Customising the Image

See the live-build documentation for detailed instructions.

#### auto/config

This contains the general configuration options for creating the image.

#### config/bootloaders

GRUB is used for UEFI systems and isolinux is for non-UEFI systems. Both use config/bootloaders/isolinux/splash.png as the background image.

#### config/packages.chroot

Contains .debs for any custom packages, the *sharp-configs* package provides the desktop configuration files & scripts and can be obtained from here:

https://build.opensuse.org/package/show/home:Head_on_a_Stick:sharpbang/sharp-configs

The source can be downloaded from the repository then modified and rebuilt with `debuild -us -uc`.

## Pre-built x86_64 (amd64) image

https://github.com/Head-on-a-Stick/SharpBang/releases/download/0.3.2+amd64/sharpbang-buster-0.3.2-amd64.hybrid.iso

sha512sum:
```
74cdf8c1fdfbd1e981249a5b2674aa9a87c51e3f350cea242ebb15390b4e433754790985ccece4a27284f3e6ba71fa7bd1d69b7f58739b080e08d14ba51885a4
```

