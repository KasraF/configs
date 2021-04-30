#! /usr/bin/env fish

# First, copy all the files
# WM stuff
cp ~/.config/i3/config i3/
cp -r ~/.config/polybar .
cp ~/.config/dunst/dunstrc .
cp -r ~/.config/rofi .

# Terminal
cp ~/.config/alacritty/alacritty.yml .
cp -r ~/.config/fish .

# Editor stuff
cp ~/.editorconfig .
cp -r ~/.doom.d ./

# LeftWM
if test -d ./leftwm;
	rm -rf ./leftwm;
end;
cp -r ~/.config/leftwm .

# Picom
if test -d ./picom;
	rm -rf ./picom;
end;
cp -r ~/.config/picom .

# Cargo!
if test ! -d ./.cargo;
   mkdir ./.cargo
end;

cp ~/.cargo/* ./.cargo/

# Git!
cp ~/.gitconfig .

# The commit and push!
git add -A
git commit -m "update"
git push
