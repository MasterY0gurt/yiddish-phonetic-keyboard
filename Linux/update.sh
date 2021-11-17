#!/bin/sh
# based on the installer by https://github.com/nevillepark/yiddish-keys-linux/blob/master/install.sh

##########################################################################

# Update the layout file in the layout directory
sudo cp yi /usr/share/X11/xkb/symbols/yi &&

# Say nice things
echo 'Update succesfull!'
