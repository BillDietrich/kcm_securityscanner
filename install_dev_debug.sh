#!/bin/bash

#---------------------------------------------------------------------------------
# install_dev_debug.sh - during development, install debug version of kcm_securityscanner

cd ../build-kcm_securityscanner-Desktop-Debug/bin/plasma/kcms/systemsettings
chmod 644 kcm_securityscanner.so
sudo cp kcm_securityscanner.so /usr/lib/x86_64-linux-gnu/qt5/plugins/plasma/kcms/systemsettings
kcmshell5 --list | grep securityscanner


#---------------------------------------------------------------------------------
