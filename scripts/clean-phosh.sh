#!/bin/bash

# Remove totem and clean up
DEBIAN_FRONTEND=noninteractive apt-get remove -y totem
DEBIAN_FRONTEND=noninteractive apt-get autoremove -y

# initialize flatpak
if [ -f "/usr/bin/flatpak" ]; then
   flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
fi

exit 0
