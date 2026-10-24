#!/system/bin/sh
# Runs early in boot, before apps start. A read-only (ro.*) property set here stays set until the
# next reboot, so nothing needs to run after boot. File permissions are set by KernelSU/Magisk at
# install.

# Car features, which the digital key needs
resetprop ro.miui.support_carlink 1
