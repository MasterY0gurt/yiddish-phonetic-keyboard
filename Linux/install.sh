#!/bin/sh
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
while true; do
    read -p "Do you wish to install the yiddish keyboard layout? (y/n) " yn
    case $yn in
        [Yy]* )
                # Copy the layout to the directory
                sudo cp yi /usr/share/X11/xkb/symbols/yi;
                # Add necessary entry to evdev.xml
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
</layoutList>_g' /usr/share/X11/xkb/rules/evdev.xml;
                break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "Installation successful!"
