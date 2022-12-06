#!/bin/bash

yay -S system76-firmware-daemon

sudo systemctl enable --now system76-firmware-daemon
sudo gpasswd -a $USER adm

yay -S firmware-manager system76-driver

sudo systemctl enable --now system76

yay -S system76-dkms system76-acpi-dkms system76-power

sudo systemctl enable --now com.system76.PowerDaemon.service