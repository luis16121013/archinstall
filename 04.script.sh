#!/bin/sh
clear
echo "----------------------------------------"
echo "|         test connection wifi         |"
echo "----------------------------------------"
ping -c 3 google.com
echo ">> Press enter to continue..."
read nextCommand
