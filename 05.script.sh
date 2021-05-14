#!/bin/sh
clear
echo "USE COMMANDS PARTITION:"
echo "-----------------------------"
echo "| 1) cfdisk   | 2) fdisk    |"
echo "-----------------------------"
echo ""
echo "PARTITIONS DISK:"
echo "------------------------------------------"
echo "| efi system | linux swap | linux system |"
echo "------------------------------------------"
echo "|  +550M     |    +2G     | default size |"
echo "------------------------------------------"
echo ""
echo ">>Press enter for continue..."
read nextRead
