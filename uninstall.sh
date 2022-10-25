#!/bin/bash

#---------------------------------------------------------------------------------
# uninstall.sh - uninstall kcm_securityscanner

set -o verbose

export KCMDIR=/usr/lib/x86_64-linux-gnu/qt5/plugins/plasma/kcms/systemsettings/

sudo rm "$KCMDIR"kcm_securityscanner.so

kcmshell5 --list | grep securityscanner


#---------------------------------------------------------------------------------
