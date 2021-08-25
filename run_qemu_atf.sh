#! /bin/bash

#sudo qemu-system-aarch64 \
#	-nographic \
#       	-smp 2 \
#       	-machine virt,secure=on -cpu cortex-a57 \
#       	-d unimp -semihosting-config enable=on,target=native \
#       	-m 512 \
#       	-bios /home/lgj/work/trusted-firmware-a/build/qemu/release/bl1.bin


qemu-system-aarch64 -nographic -machine virt,secure=on -cpu cortex-a57  \
        -kernel /home/lgj/work/linux/arch/arm64/boot/Image \
        -drive file=/home/lgj/work/buildroot/output/images/rootfs.ext4,if=virtio,format=raw -append root=/dev/vda \
        -smp 2 -m 2048 \
	-bios /home/lgj/work/trusted-firmware-a/build/qemu/release/bl1.bin  \
        -d unimp -semihosting-config enable=on,target=native
