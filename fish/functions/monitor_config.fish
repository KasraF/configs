function monitor_config -a mode -d "Call xrandr to set monitor mode. Mode: {mobile, docked}"
    if test (count $argv) = 0
	echo "Please provide the mode. Options are: {mobile, docked}"
    else
	switch $mode
	    case mobile
		echo "Initializing mobile mode..."
		xrandr --output eDP-1 --auto
		echo "Xft.dpi: 180" > ~/.Xresources
		cp ~/.config/polybar/.config.mobile ~/.config/polybar/config
		cp ~/.config/alacritty/.alacritty.yml.mobile ~/.config/alacritty/alacritty.yml;
		sh ~/.fehbg;
		echo "Configuration completed. Please restart lighdm to fix DPI"
	    case docked
		echo "Initializing docked mode..."
		xrandr --output DP-2 --auto --output eDP-1 --off
		echo "! Xft.dpi: 180" > ~/.Xresources
		cp ~/.config/polybar/.config.docked ~/.config/polybar/config
		cp ~/.config/alacritty/.alacritty.yml.docked ~/.config/alacritty/alacritty.yml;
		sh ~/.fehbg;
		echo "Configuration completed. Please restart lighdm to fix DPI"
	    case '*'
		echo -n "Mode not recognized: "
		echo $mode
	end
    end
end
