## SharpBang

SharpBang (♯!) is a live ISO image that can be used to install a pre-configured Openbox/Tint2 desktop running on Debian stable.

The live-build system is used, just like the official Debian images. A full suite of rescue & recoery tools are included in the live environment and a rescue mode is accesible from the boot menu which can be used to open a shell in an installed system.

Documentation: https://live-team.pages.debian.net/live-manual/

### Build Instructions

Change into the **buster** directory then run:
```
# lb clean --purge
lb config
# lb build
```
Use `cp` to transfer the image to a USB stick:
```
# cp sharpbang-buster.img /dev/sdX ; sync
```
The username for the live system is *user* and the password is *live*.

### Customising the image


