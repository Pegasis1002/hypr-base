#!/bin/bash

#sources
#source newlook

#wall=$(find ~/wallpapers/ -name "*.jpg" -o -name "*.png" | shuf -n 1)
#all themes
dark="$(find /home/dfg/wallpapers/Dark/ -name "*.jpg" -o -name "*.png" | shuf -n 1)"
light="$(find /home/dfg/wallpapers/light/ -name "*.jpg" -o -name "*.png" | shuf -n 1)"
pink="$(find /home/dfg/wallpapers/pink/ -name "*.jpg" -o -name "*.png" | shuf -n 1)"
blue="$(find /home/dfg/wallpapers/blue/ -name "*.jpg" -o -name "*.png" | shuf -n 1)"

options=("Dark" "Light" "Pink" "Blue" "Quit")

selected_option=$(printf '%s\n' "${options[@]}" | wofi --dmenu --prompt "Select an option:")

case $selected_option in
    "Dark")
	#set wallpaper
	exec swww img $dark &


	#pywal
	wal -c 
	wal -i $dark

	#relaunch waybar 
	exec ~/dotfiles/waybar/launch.sh
	;;
    "Light")
       	#set wallpaper
	exec swww img $light &


	#pywal
	wal -c 
	wal -i $light

	#relaunch waybar 
	exec ~/dotfiles/waybar/launch.sh
	;;
    "Pink")
       	#set wallpaper
	exec swww img $pink &


	#pywal
	wal -c 
	wal -i $pink

	#relaunch waybar 
	exec ~/dotfiles/waybar/launch.sh
	;;
    "Blue")
	#set wallpaper
	exec swww img $blur &


	#pywal
	wal -c 
	wal -i $blue

	#relaunch waybar 
	exec ~/dotfiles/waybar/launch.sh
	;;
    "Quit")
        # Exit the script
        echo "Quitting..."
        ;;
    *)
        # Handle unexpected input
        echo "Invalid option: $selected_option"
        ;;
esac
