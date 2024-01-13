#!/bin/bash


user=$(whoami)

echo "running script as: $user"
#hyprland config
if test -f /home/$user/.config/hypr/hyprland.conf; then
	#mv --mkdir /home/$user/.config/hypr/hyprland.conf /home/$user/backup/hypr/hyprland.conf
	cp /home/$user/git/hyrp-base/hypr/hyprland.conf  /home/$user/.config/hypr/hyprland.conf
else
	cp /home/$user/git/hyrp-base/hypr/hyprland.conf  /home/$user/.config/hypr/hyprland.conf
fi

#install essential packages
exec sudo pacman -S neovim swww firefox thunar

mkdir /home/$user/zsh-scripts
cp /home/$user/git/hyrp-base/scripts/newlook /home/$user/git/hyrp-base/scripts/theme-menu.sh /home/$user/zsh-scripts/
