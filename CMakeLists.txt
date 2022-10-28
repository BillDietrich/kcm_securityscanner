# SPDX-FileCopyrightText: 2022 Bill Dietrich <gith4@billdietrich.me>
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.16)

project(kcm_securityscanner)

set(QT_MIN_VERSION "5.15.0")
set(KF5_MIN_VERSION "5.92.0")

set(Qt5_DIR "/home/user1/Qt/Tools/QtDesignStudio/qt5_design_studio_reduced_version/lib/cmake/Qt5/")

find_package(ECM ${KF5_MIN_VERSION} REQUIRED NO_MODULE)
set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH})

#add_definitions(-DTRANSLATION_DOMAIN=\"kcm_securityscanner\")

include(KDEInstallDirs)
include(KDECMakeSettings)
include(KDECompilerSettings NO_POLICY_SCOPE)

find_package(Qt5 ${QT_MIN_VERSION} CONFIG REQUIRED COMPONENTS
    Quick
)

find_package(KF5 ${KF5_MIN_VERSION} REQUIRED COMPONENTS
    I18n
    KCMUtils
    Declarative
    Config
)

kcoreaddons_add_plugin(kcm_securityscanner INSTALL_NAMESPACE "plasma/kcms/systemsettings")

# target_sources(kcm_securityscanner PRIVATE securityscanner.cpp)

target_link_libraries(kcm_securityscanner
    Qt5::Core
    KF5::CoreAddons
    KF5::I18n
    KF5::QuickAddons
    KF5::KCMUtils
)

kpackage_install_package(package kcm_securityscanner kcms)

# new in 5.97 according to
# https://github.com/KDE/kcmutils/blob/master/KF5KCMUtilsMacros.cmake
#kcmutils_generate_desktop_file(kcm_securityscanner)

feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)

# Note: output is
# /projects/build-kcm_securityscanner-Desktop-Debug/bin/plasma/kcms/systemsettings/kcm_securityscanner.so
# /projects/build-kcm_securityscanner-Desktop-Release/bin/plasma/kcms/systemsettings/kcm_securityscanner.so

# Do "chmod 644 kcm_securityscanner.so"
# Copy it to: /usr/lib/x86_64-linux-gnu/qt5/plugins/plasma/kcms/systemsettings/
# then run: "kcmshell5 --list | grep securityscanner"
# then run: "kcmshell5 kcm_securityscanner"
