# autoxrandr

This script stack all connected outputs horizontally at their largest resolution.

## Installation

Copy this script to any location. (e.g. /usr/bin/autoxrandr.sh)
```
sudo curl -sL "https://gitlab.com/iruzo/autoxrandr/-/raw/main/autoxrandr.sh" -o /usr/local/bin/autoxrandr
```
Give exec permissions.
```
sudo chmod +x /usr/local/bin/autoxrandr
```
- To update, just do curl again, no need to chmod anymore.

**i3**

You can set your i3 config to auto manage autoxrandr:
```
exec_always if [  ! -f ~/.local/script/autoxrandr.sh ]; then $(mkdir -p ~/.local/script && curl https://raw.githubusercontent.com/iruzo/autoxrandr/main/autoxrandr.sh > ~/.local/script/autoxrandr.sh) && chmod +x ~/.local/script/autoxrandr.sh; fi
exec_always ~/.local/script/autoxrandr.sh
```

## Usage

Insert this script in the .xinitrc or execute it manually everytime you want to re-stack the outputs.

e.g. .xinitrc
```
autoxrandr &
exec dwm
```
