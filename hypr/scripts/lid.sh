#!/usr/bin/env zsh

if [[ "$(hyprctl monitors)" =~ "\sDP-[1-9]+" ]]; then
	sleep 1 
	if [[ $1 == "open" ]]; then
		hyprctl keyword monitor "eDP-1,1920x1080,0x0,1"
	else
		hyprctl keyword monitor "eDP-1,disabled"
	fi
fi
