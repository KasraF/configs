#! /usr/bin/env fish

# First, copy all the files
# WM stuff
cp ~/.config/i3/config i3/
cp -r ~/.config/polybar .
cp ~/.config/dunst/dunstrc .

# Terminal
cp ~/.config/alacritty/alacritty.yml .
cp -r ~/.config/fish .

# Editor stuff
cp ~/.editorconfig .
cp -r ~/.doom.d ./

# Cargo!
if test ! -d ./.cargo;
   mkdir ./.cargo
end;

cp ~/.cargo/config ./.cargo/

# The commit and push!
git add -A
git commit -m "update"
git push
