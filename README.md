# SharpBang

[![Build Status](https://travis-ci.com/Head-on-a-Stick/SharpBang.svg?branch=i386)](https://travis-ci.com/Head-on-a-Stick/SharpBang)

[![2019-10-22-191620-1024x768-scrot.png](https://i.postimg.cc/3wvjkRHv/2019-10-22-191620-1024x768-scrot.png)](https://postimg.cc/R3vJ8vhS)

SharpBang (♯!) is a live ISO image that can be used to install a pre-configured Openbox/Tint2 desktop running on Debian stable.

The live-build system is used to create the ISO, just like the official Debian images. A full suite of rescue & recovery tools are included in the live environment and a rescue mode is accessible from the boot menu which can be used to open a shell in an installed system.

Documentation: https://live-team.pages.debian.net/live-manual/

## Build Instructions

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

## Customising the Image

See the live-build documentation for detailed instructions.

### auto/config

This contains the general configuration options for creating the image.

### config/bootloaders

GRUB is used for UEFI systems and isolinux is for non-UEFI systems. Both use config/bootloaders/isolinux/splash.png as the background image.

### config/packages.chroot

Contains .debs for any custom packages, the *sharp-configs* package provides the desktop configuration files & scripts and can be obtained from here:

https://build.opensuse.org/package/show/home:Head_on_a_Stick:sharpbang/sharp-configs

The source can be downloaded from the repository then modified and rebuilt with `debuild -us -uc`.

## Pre-built x86 (i386 PAE) image

https://github.com/Head-on-a-Stick/SharpBang/releases/download/0.2.0%2B201910241801/sharpbang-buster-i386.hybrid.iso

sha512sum:
```
0a27c87b4470ac8b3398a66b27f81a7c71a43275372dbc890d8e502f5c70f3a9724c02aac59a4ea30d76cdae0f8577b872d29b85c0c13eba3115f455f5772af9
```

