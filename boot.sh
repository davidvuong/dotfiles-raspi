#!/usr/bin/env bash

sudo umount /dev/sdb1 /media/pi/Elements
sudo umount /dev/sda1 /media/pi/SeagateExp

sudo mount /dev/sdb1 /media/hdd_1
sudo mount /dev/sda1 /media/hdd_2
