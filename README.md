## sharpbang-live
SharpBanng live-build internals.

This "sharpbang-live" branch is for building in a Debian stretch environment,
*ie* with the newer versions of live-build and associated tools.
The resulting ISO will be SharpBang stretch.

You must have (stretch) live-build installed to build these ISOs.

**NOTE:** be sure to edit `auto/config` in each build directory,
to set `--mirror-bootstrap` to a reliable fast local debian mirror for the build computer. This can save considerable build time. The built live system will still use the mirror set by `--mirror-binary`.

**NOTE:** The system beep at the Live grub screen is caused by a bell code in the bootloader config file.
Copy `/usr/share/live/build/bootloaders/isolinux` to `config/bootloaders/` and edit `config/bootloaders/isolinux/menu.cfg` in each build directory (line 4):
```
menu title Boot menu[BEL]
```
Take out that last character, this will prevent your ISOs from screeching a system beep when they boot.

Start the build in a new directory, empty except for copies of
the `auto/` and `config/` directories (and their contents).

Before starting:
* Make sure you have ~10GB of free disk space.
* Check `--mirror-bootstrap` as noted above.
* Check `isolinux/menu.cfg` as noted above.
* Check build architecture:
   * For 64bit, in `auto/config`:
```
--architectures amd64 -k amd64 \
```
   * and 32bit:
```
--architectures i386 -k 686-pae \
```
   * and 32bit CD:
```
--architectures i386 -k 586 \
```
* Make sure any local .deb packages in `config/packages.{binary,chroot}` are for the correct architecture.
* Update `auto/config`: `--image-name` with the latest version.
* Append `-cd` if it is a CD ISO (this will inform bl-welcome). Do NOT add architecture (i386/amd64), it will be appended automatically.
* Add a tag with the same version name (INCLUDING architecture)
to the git tree, so the build config can be found later. This is important if you release the iso in public.

To build, cd to the live-build root directory (*ie* with `auto/` and `config/`)
 and run:
```
sudo lb clean --purge
lb config
sudo lb build
```
or
```
sudo lb build --debug
```
for a more detailed build.log
