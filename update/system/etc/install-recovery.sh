#!/system/bin/sh
#
# /system/etc/install-recovery.sh
mount -t debugfs debugfs /sys/kernel/debug
echo '0' > /sys/kernel/debug/msm_fb/0/vsync_enable
umount /sys/kernel/debug# NOS-Injected init.d support
run-parts /system/etc/init.d/


