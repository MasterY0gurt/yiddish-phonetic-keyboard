#!/bin/sh
# based on the installer by https://github.com/nevillepark/yiddish-keys-linux/blob/master/install.sh

##########################################################################

# Copy the layout file to the layout directory
sudo cp yi /usr/share/X11/xkb/symbols/yi &&

# Add Yiddish entry to /usr/share/X11/xkb/rules/evdev.xml

sudo sed -i 's_<\/layoutList>_<layout>\
    <configItem>\
      <name>yi</name>\
      <shortDescription>yi</shortDescription>\
      <description>Yiddish</description>\
      <languageList>\
        <iso639Id>yid</iso639Id>\
      </languageList>\
    </configItem>\
   </layout>\
</layoutList>_g' /usr/share/X11/xkb/rules/evdev.xml &&

# Say nice things
echo 'Success!'
