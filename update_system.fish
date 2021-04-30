#! /usr/bin/env fish

# First, copy all the files
# WM stuff
cp i3/config ~/.config/i3/config
cp -r ./polybar ~/.config/polybar
cp ./dunstrc ~/.config/dunst/dunstrc
cp ./rofi/config ~/.config/rofi/config

# Terminal
cp ./alacritty.yml ~/.config/alacritty/alacritty.yml
cp -r ./fish ~/.config/fish

# Editor stuff
cp ./.editorconfig ~/.editorconfig
cp -r ./.doom.d ~/.doom.d

# LeftWM
cp -r ./leftwm/* ~/.config/leftwm/
cp -r ./picom ~/.config/picom

# Cargo!
cp ./.cargo/* ~/.cargo/

# Git!
cp ./.gitconfig ~/.gitconfig

echo "Done!"
