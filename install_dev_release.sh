#!/bin/bash

#---------------------------------------------------------------------------------
# install_dev_release.sh - during development, install release version of kcm_securityscanner

set -o verbose

export BINDIR=../build-kcm_securityscanner-Desktop-Release/bin/plasma/kcms/systemsettings
export KCMDIR=/usr/lib/x86_64-linux-gnu/qt5/plugins/plasma/kcms/systemsettings/

#sudo cp main.qml "$KCMDIR"

cd "$BINDIR"

chmod 644 kcm_securityscanner.so

sudo cp kcm_securityscanner.so "$KCMDIR"

kcmshell5 --list | grep securityscanner


#---------------------------------------------------------------------------------
