#!/bin/bash

#---------------------------------------------------------------------------------
# install.sh - install kcm_securityscanner

set -o verbose

export KCMDIR=/usr/lib/x86_64-linux-gnu/qt5/plugins/plasma/kcms/systemsettings/

chmod 644 kcm_securityscanner.so

sudo cp kcm_securityscanner.so "$KCMDIR"

kcmshell5 --list | grep securityscanner


#---------------------------------------------------------------------------------
