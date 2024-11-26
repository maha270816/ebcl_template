# Makefile for runnung QEMU amd64 images

#-------------------
# Run the QEMU image
#-------------------

.PHONY: qemu
qemu: grub
	@echo "Running $(disc_image) in QEMU x86_64 using EFI loader..."
	qemu-system-x86_64 \
        -m 4096 \
        -netdev user,id=mynet0$(qemu_net_append) \
        -device virtio-net-pci,netdev=mynet0 \
        -drive format=raw,file=$(disc_image),if=virtio \
        -bios /usr/share/qemu/OVMF.fd