#!/bin/bash

#---------------------------------------------------------------------------------
# install_dev_debug.sh - during development, install debug version of kcm_securityscanner

set -o verbose

export BINDIR=../build-kcm_securityscanner-Desktop-Debug/bin/plasma/kcms/systemsettings
export KCMDIR=/usr/lib/x86_64-linux-gnu/qt5/plugins/plasma/kcms/systemsettings/

cd "$BINDIR"

chmod 644 kcm_securityscanner.so

sudo cp kcm_securityscanner.so "$KCMDIR"

kcmshell5 --list | grep securityscanner


#---------------------------------------------------------------------------------
