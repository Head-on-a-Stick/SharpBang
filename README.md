# SharpBang

[![2019-10-22-191620-1024x768-scrot.png](https://i.postimg.cc/3wvjkRHv/2019-10-22-191620-1024x768-scrot.png)](https://postimg.cc/R3vJ8vhS)

[![Build Status](https://travis-ci.com/Head-on-a-Stick/SharpBang.svg?branch=master)](https://travis-ci.com/Head-on-a-Stick/SharpBang)

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

## Pre-built x86_64 (amd64) image

https://drive.google.com/open?id=18XV6hIuIZw1uDR2hDS5Hg1Kj12WPAjtt

sha512sum:
```
8dac29e0175cd0982624b81628822b6e2b00a1940b9d4d8ff9922e830cb13f1fa05bea29255f4f8840df1ef6ffa94db4229eb3605492e63524f65c0076090b76
```

