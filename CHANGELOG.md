# Changelog

## v2

- `versionCode` is now a number (it was `q`), so KernelSU/Magisk can compare versions.
- `service.sh` is gone: it only set `ro.miui.support_carlink` again, which cannot change after early boot.
- File permissions are no longer reset on every boot: KernelSU/Magisk already set them at install.
- `updateJson`: KernelSU and Magisk show when a new version is available.

## v1

- First published version.
