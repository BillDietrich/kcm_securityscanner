#!/bin/bash

#---------------------------------------------------------------------------------
# install.sh - install kcm_securityscanner

chmod 644 kcm_securityscanner.so
sudo cp kcm_securityscanner.so /usr/lib/x86_64-linux-gnu/qt5/plugins/plasma/kcms/systemsettings
kcmshell5 --list | grep securityscanner


#---------------------------------------------------------------------------------
