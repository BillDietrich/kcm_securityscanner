
# kcm_securityscanner

KDE settings module (KCModule, KConfig Module) to do a security-scan of a Linux desktop system.

[IN PROTOTYPING STAGE; NOT DANGEROUS, BUT NOT READY FOR USE !!!]

![Do not use](http://4.bp.blogspot.com/-1lTbJMSPZaE/Tyu0eri0bOI/AAAAAAAAEP0/L6yk8jqGUwI/s1600/abnormal%2Bbrain.jpg "Do not use")

## Functionality

Scans your system, looking for common problems or potential vulnerabilities.
Presents the results to the user, with commentary and suggestions.

## Install

* Requires a desktop Linux system that is running the KDE Plasma desktop environment or compatible (Deepin, Trinity, NX Desktop ?).
* Run `./install.sh` (will ask for sudo password).

## Use

* Go to System Settings and look or search for "Security Scanner".

---

## Releases

### 0.0.1

* Builds.
* Doesn't show up in Settings.
* Shows up in "kcmshell5 --list".
* Launches via "kcmshell5 kcm_securityscanner", shows dialog.
* Gives "can't find QML file" error.

### 0.0.2

* Various tweaks.
* Still gives "can't find QML file" error.

### 0.0.3

* Created a .desktop file, but installing it breaks some things.

---

## Development

### To-Do list

* Much.

### Development Environment

I'm no expert on this stuff, maybe I'm doing some things stupidly.

Now using:

* Qt Creator 8
* Qt 6.4.0
* UbuntuDDE Remix 22.04
* On UbuntuDDE, had to do "sudo apt install extra-cmake-modules plasma-sdk qml-module-org-kde-kcm qtdeclarative5-dev libkf5plasma-dev libkf5declarative-dev libkf5xmlgui-dev libkf5activities-dev build-essential libkf5newstuff-dev kirigami2-dev qml-module-org-kde-i18n-localedata libkf5kcmutils-dev"
* In CMakeLists.txt, had to change KF5_MIN_VERSION from "5.97.0" to "5.92.0" because my system didn't have 5.97

Building:

1- Launch Qt Creator.

2- Do Open Project and select CMakeLists.txt file.

3- See icon for "kcm_securityscanner" computer "Release" on left side above triangle build icons.
Click on it and you should see "Kit" set to "Desktop Qt 6.4.0 GCC 64bit" and "Release".

4- Do Build (icon in lower-left, or Ctrl+B).

5- Check both "Compiler Output" and "General Messages" (at bottom).

[GitHub repo for this module](https://github.com/BillDietrich/kcm_securityscanner)

[My web site](https://www.billdietrich.me/)

---

## Privacy Policy

This software doesn't collect, store or transmit your identity or personal information in any way.
