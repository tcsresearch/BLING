#!/bin/env bash

echo "Basic Info"
echo "----------"
  inxi -M
echo " "
read -rp "Press [Enter] To Continue or CTRL + C To Cancel."
echo " "

echo "CPU Info"
echo "--------"
  inxi -C
echo " "
read -rp "Press [Enter] To Continue or CTRL + C To Cancel."
echo " "

echo "GPU Info"
echo "--------"
  inxi -G
echo " "
read -rp "Press [Enter] To Continue or CTRL + C To Cancel."
echo " "

echo "Disk Info"
echo "---------"
  inxi -D
echo " "
read -rp "Press [Enter] To Continue or CTRL + C To Cancel."
echo " "

echo "IP Info"
echo "-------"
  inxi -i
echo " "

