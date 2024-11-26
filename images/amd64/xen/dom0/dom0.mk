# Makefile for configuring grub on efi partition

# Config script for GRUB
config_grub ?= config_grub.sh

# configure grub on efi partition
.PHONY: grub
grub: $(disc_image)
	@echo "Configure grub on efi partition..."
	set -o pipefail && ./$(config_grub) ./$(disc_image) 2>&1 | tee -a $(disc_image).log

