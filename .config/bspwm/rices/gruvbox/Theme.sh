#!/usr/bin/env bash
#  ██████╗ ██╗ ██████╗███████╗
#  ██╔══██╗██║██╔════╝██╔════╝
#  ██████╔╝██║██║     █████╗  
#  ██╔══██╗██║██║     ██╔══╝  
#  ██║  ██║██║╚██████╗███████╗
#  ╚═╝  ╚═╝╚═╝ ╚═════╝╚══════╝

# Set bspwm configuration for gruvbox
set_bspwm_config() {
		bspc config border_width 1.5
		bspc config top_padding 52
		bspc config bottom_padding 2
		bspc config normal_border_color "#d3869b"
		bspc config active_border_color "#d3869b"
		bspc config focused_border_color "#fbf1c7"
		bspc config presel_feedback_color "#b8bb26"
		bspc config left_padding 2
		bspc config right_padding 2
		bspc config window_gap 12
}

# Reload terminal colors
set_term_config() {
		sed -i "$HOME"/.config/alacritty/fonts.yml \
		-e "s/family: .*/family: JetBrainsMono Nerd Font/g" \
		-e "s/size: .*/size: 10/g"
		
		sed -i "$HOME"/.config/alacritty/rice-colors.yml \
		-e "s/colors: .*/colors: *gruvbox/"
}

# Set compositor configuration
set_picom_config() {
		sed -i "$HOME"/.config/bspwm/picom.conf \
			-e "s/normal = .*/normal =  { fade = true; shadow = true; } /g" \
			-e "s/shadow-color = .*/shadow-color = \"#000000\"/g" \
			-e "s/corner-radius = .*/corner-radius = 0/g" \
			-e "s/\".*:class_g = 'Alacritty'\"/\"100:class_g = 'Alacritty'\"/g" \
			-e "s/\".*:class_g = 'FloaTerm'\"/\"100:class_g = 'FloaTerm'\"/g"
}

# Set dunst notification daemon config
set_dunst_config() {
		sed -i "$HOME"/.config/bspwm/dunstrc \
		-e "s/transparency = .*/transparency = 0/g" \
		-e "s/frame_color = .*/frame_color = \"#282828\"/g" \
		-e "s/separator_color = .*/separator_color = \"#d3869b\"/g" \
		-e "s/font = .*/font = JetBrainsMono Nerd Font Medium 9/g" \
		-e "s/foreground='.*'/foreground='#d3869b'/g" \
		-e "s/offset = .*/offset = 14x64 /g" 
		
		sed -i '/urgency_low/Q' "$HOME"/.config/bspwm/dunstrc
		cat >> "$HOME"/.config/bspwm/dunstrc <<- _EOF_
				[urgency_low]
				timeout = 3
				background = "#282828"
				foreground = "#fbf1c7"

				[urgency_normal]
				timeout = 6
				background = "#282828"
				foreground = "#fbf1c7"

				[urgency_critical]
				timeout = 0
				background = "#282828"
				foreground = "#fbf1c7"
_EOF_
}

# Launch the bar
launch_bars() {
		polybar -q cata-bar -c ${rice_dir}/config.ini &
}



### ---------- Apply Configurations ---------- ###

set_bspwm_config
set_term_config
set_picom_config
set_dunst_config
launch_bars
