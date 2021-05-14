#!/bin/sh
echo "----------------------------------------"
echo " add user:"
read option
useradd -m $option
passwd $option
usermod -aG wheel,audio,video,optical,store
usermod -aG wheel,audio,video,optical,store $option

pacman -S sudo --noconfirm
pacman -S grub --noconfirm
pacman -S efibootmgr --noconfirm
pacman -S dosfstools --noconfirm
pacman -S os-prober --noconfirm
pacman -S mtools --noconfirm
mkdir /boot/EFI
mount /dev/sda1 /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S networkmanager --noconfirm
systemctl enable NetworkManager
echo ">>Press enter for continue..."
