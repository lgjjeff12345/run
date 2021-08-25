#! /bin/bash

qemu-system-aarch64 \
     -M  virt \
     -cpu cortex-a53 \
     -smp 2 \
     -m 2048M \
     -kernel /home/lgj/work/u-boot/u-boot \
     -nographic
     #-append "root=/home/lgj/work/buildroot/output/images/rootfs.ext4 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc ignore_loglevel" \
     #-device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare
