## sharpbang-live
SharpBang live-build internals.

This "sharpbang-live" branch is for building in a Debian buster environment,
*ie* with the newer versions of live-build and associated tools.
The resulting ISO will be SharpBang buster.

You must have (buster) live-build installed to build these ISOs.

Start the build in a new directory, empty except for copies of
the `auto/` and `config/` directories (and their contents).

Before starting:
* Make sure you have ~10GB of free disk space.
* Check `--mirror-bootstrap` as noted above.
* Check `isolinux/menu.cfg` as noted above.
* Check build architecture:
  * For 64bit, in `auto/config`:
  ```
  --linux-flavours amd64 \
  ```
  * and 32bit:
  ```
  --linux-flavours 686-pae \
  ```
  * and 32bit CD:
  ```
  --linux-flavours 586 \
  ```
* Make sure any local .deb packages in `config/packages.{binary,chroot}` are for the correct architecture.
* Update `auto/config`: `--image-name` with the latest version.
* Append `-cd` if it is a CD ISO. Do NOT add architecture (i386/amd64), it will be appended automatically.

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
