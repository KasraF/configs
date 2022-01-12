#!/usr/bin/env fish

function fixdpi;
    if test 1 -eq (xrandr --listactivemonitors | grep 'eDP' | wc -l); # Mobile
        sed -i -e 's/96/192/g' ~/.Xresources;
        xrdb ~/.Xresources;
        sed -i -e 's/dpi = 96/dpi = 192/g' ~/.config/leftwm/themes/basic_polybar/polybar.config;
        sed -i -e 's/height = 26/height = 40/g' ~/.config/leftwm/themes/basic_polybar/polybar.config;
        leftwm-command SoftReload;
    else if test 1 -eq (xrandr --listactivemonitors | grep -E 'DP[0-9]' | wc -l); # Docked
        sed -i -e 's/192/96/g' ~/.Xresources;
        xrdb ~/.Xresources;
        sed -i -e 's/dpi = 192/dpi = 96/g' ~/.config/leftwm/themes/basic_polybar/polybar.config;
        sed -i -e 's/height = 40/height = 26/g' ~/.config/leftwm/themes/basic_polybar/polybar.config;
        leftwm-command SoftReload;
    end;
end;
