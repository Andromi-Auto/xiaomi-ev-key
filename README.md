# Xiaomi EV Key Enabler

A KernelSU module that brings the **Xiaomi EV digital key** to HyperOS **Global and EEA (EU) ROMs**, which cannot add a Xiaomi EV as a digital key on their own.

Part of the [Andromi Auto](https://andromi-auto.github.io) project, but it works on its own.

## Requirements

- A Xiaomi phone on **HyperOS** with a Global or EEA ROM
- **Unlocked bootloader** and **KernelSU** or **KernelSU Next** (Magisk also works)
- A **metamodule** installed first: KernelSU only adds a module's apps and files to the system
  through one. We recommend [NoMount](https://github.com/maxsteeel/nomount/releases/latest).
  Without it the module installs but its apps never appear.

Tested on a Xiaomi 17 Pro Max, HyperOS EU (EEA) ROM, KernelSU Next with NoMount.

## Install

1. Install the [NoMount](https://github.com/maxsteeel/nomount/releases/latest) metamodule in
   KernelSU and reboot, if you have not yet.
2. Download **`xiaomi-ev-key-<version>.zip`** from the [latest release](https://github.com/Andromi-Auto/xiaomi-ev-key/releases/latest).
3. Open **KernelSU** → **Module** → **Install**, and choose the zip.
4. **Reboot** the phone.

Later versions show up as an update in KernelSU's module list.

## What it does

- Installs the **Digital Key** (`com.xiaomi.digitalkey`) and **Smart cards** (`com.miui.tsmclient`) apps as system apps.
- Sets `ro.miui.support_carlink` so the car features the key needs are turned on.

Nothing changes on disk outside the module: uninstalling it and rebooting removes the apps again.

## Uninstall

KernelSU → **Module** → remove **Xiaomi EV Key Enabler**, then reboot.

## Files

| File | What it is |
| --- | --- |
| `module.prop` | Module name, version and update link |
| `post-fs-data.sh` | Runs early in boot: sets the properties |
| `system/` | The apps and configuration added to `/product` |
| `META-INF/` | Standard installer for KernelSU/Magisk |
| `update.json` | Read by KernelSU/Magisk to offer updates |

## Releasing a new version

Change `version` and `versionCode` in `module.prop`, the same values in `update.json`, and add a
section to `CHANGELOG.md`. On push to `main`, GitHub Actions builds `xiaomi-ev-key-<version>.zip` and
publishes the release.

## Disclaimer

Use at your own risk; a system module can stop a phone from booting, so know how to remove a
module from recovery or KernelSU's safe mode first. The apps in `system/` belong to Xiaomi. Not
affiliated with Xiaomi.
