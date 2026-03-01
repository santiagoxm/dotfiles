sudo mkdir /boot/EFI/archiso

sudo bsdtar -v -x --no-same-permissions --strip-components 1 -f archlinux.iso -C /boot/EFI/archiso arch

sudo ukify build --linux=/boot/EFI/archiso/boot/x86_64/vmlinuz-linux \
--initrd=/boot/EFI/archiso/boot/x86_64/initramfs-linux.img \
--cmdline="archisobasedir=/EFI/archiso archisosearchfilename=/EFI/archiso/boot/x86_64/vmlinuz-linux initrd=\EFI\archiso\boot\x86_64\initramfs-linux.img" \
--output=/boot/EFI/BOOT/BOOTX64.EFI
