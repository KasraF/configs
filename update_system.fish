#! /usr/bin/env fish

# First, copy all the files
# WM stuff
cp i3/config ~/.config/i3/
cp -r ./polybar ~/.config/
cp ./dunstrc ~/.config/dunst/
cp ./rofi/config ~/.config/rofi/

# Terminal
cp -r ./alacritty/* ~/.config/alacritty/
cp -r ./fish/* ~/.config/fish/
cp ./.tmux.conf ~/.tmux.conf

# Editor stuff
cp ./.editorconfig ~/.editorconfig
cp -r ./.doom.d ~/.doom.d

# LeftWM
cp -r ./leftwm/* ~/.config/leftwm/
cp -r ./picom ~/.config/

# Cargo!
cp ./.cargo/* ~/.cargo/

# Git!
cp ./.gitconfig ~/.gitconfig

echo "Done!"
