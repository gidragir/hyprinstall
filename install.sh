#!/usr/bin/env bash
export base="$(pwd)"

pacman -Syu

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
cd $base
rm -rf /tmp/yay

sudo pacman -S xorg-xhost bash-completion nautilus dart-sass fd brightnessctl slurp wl-clipboard asusctl power-profiles-daemon gnome-bluetooth-3.0
xhost + local:

sudo systemctl enable power-profiles-daemon.service
sudo systemctl enable asusd-user.service

sudo systemctl start power-profiles-daemon.service
sudo systemctl start asusd-user.service

yay -S --needed --answerclean All --answerdiff None aylurs-gtk-shell microsoft-edge-stable telegram-desktop visual-studio-code-bin grub-customizer bun matugen-bin hyprpicker-git

cp -r * ~/.config/

mkdir -p ~/Pictures/Wallpapers
cp -r Wallpapers/* ~/Pictures/Wallpapers