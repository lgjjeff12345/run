#! /bin/bash

qemu-system-aarch64 \
     -M  virt \
     -cpu cortex-a53 \
     -smp 2 \
     -m 2048M \
     -kernel /home/lgj/work/linux/arch/arm64/boot/Image \
     -drive file=/home/lgj/work/buildroot/output/images/rootfs.ext4,if=virtio,format=raw -append root=/dev/vda \
     -nographic
