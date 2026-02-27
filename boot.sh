sudo efibootmgr --create \
--disk /dev/sda --part 1 --label "Arch Linux" \
--loader /vmlinuz-linux \
--unicode 'root=PARTUUID=7a5179dd-bc49-438d-9b82-57fa0cc1896f ro loglevel=4 systemd.log_level=warning initrd=\amd-ucode.img'
