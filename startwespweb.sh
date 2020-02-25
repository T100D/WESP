#!/bin/sh
#
# The VNC server does not support OpenGL extensions. The --disable-webgl is to make sure Chrome doesn't try to use OpenGL/WebGL
# The --disable-gpu is to disable the GPU error on starting
# The --password-store=basic disables the keyring question at opening the browser
# The  --new-window is needed for a sepperate window in combination with --user-data-dir=/home/wesp/.config/chromium/
# this directory is the same as the basig datastor so the windows are linked
# wmctrl positions the second window o the first screen
#
# Vesion 1.0 dd 24-02-2020
#
exec /usr/bin/chromium-browser --disable-webgl --disable-gpu --password-store=basic --window-size=1920,1166 --window-position=1921,28 %u http://our.applciation.url & sleep 1 ; /usr/bin/chromium-browser --disable-webgl --user-data-dir=/home/wesp/.config/chromium/ --disable-gpu --new-window --password-store=basic --window-position=1921,28 --window-size=1920,1166 %u http://our.applciation.url & sleep 1 ; wmctrl -r :ACTIVE: -e 0,0,28,1919,1166