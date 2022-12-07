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

## Usage

Insert this script in the .xinitrc or execute it manually everytime you want to re-stack the outputs.

e.g. .xinitrc
```
autoxrandr &
exec dwm
```
