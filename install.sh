#!/usr/bin/env bash
export base="$(pwd)"

pacman -Syu

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
cd $base
rm -rf /tmp/yay

sudo pacman -S xorg-xhost bash-completion hypridle hyprlock hyprpaper nautilus
xhost + local:

yay -S --needed --answerclean All --answerdiff None aylurs-gtk-shell microsoft-edge-stable telegram-desktop visual-studio-code-bin grub-customizer
