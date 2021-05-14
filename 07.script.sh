#!/bin/sh
ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
hwclock --systohc
cp locale.gen /etc/
locale-gen
echo KEYMAP=es > /etc/vconsole.conf
echo LANG=es_PE.UTF8 > /etc/locale.conf
