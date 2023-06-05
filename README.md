# pxrandr

This script stack all connected outputs horizontally at their largest resolution.

## Installation

Copy this script to any location. (e.g. /usr/bin/pxrandr)
```
sudo curl -sL "https://raw.githubusercontent.com/iruzo/pxrandr/main/pxrandr" -o /usr/local/bin/pxrandr
```
Give exec permissions.
```
sudo chmod +x /usr/local/bin/pxrandr
```
- To update, just do curl again, no need to chmod anymore.

**i3**

You can set your i3 config to auto manage pxrandr:
```
exec_always if [  ! -f ~/.local/script/pxrandr ]; then $(mkdir -p ~/.local/script && curl https://raw.githubusercontent.com/iruzo/pxrandr/main/pxrandr > ~/.local/script/pxrandr) && chmod +x ~/.local/script/pxrandr; fi
exec_always ~/.local/script/pxrandr
```

## Usage

Insert this script in the .xinitrc or execute it manually everytime you want to re-stack the outputs.

e.g. .xinitrc
```
pxrandr &
exec dwm
```
