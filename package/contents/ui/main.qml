/**
 * SPDX-FileCopyrightText: 2022 Bill Dietrich <gith4@billdietrich.me>
 * SPDX-License-Identifier: MIT
 */

import QtQuick 2.12
import QtQuick.Controls 2.12 as Controls

import org.kde.kirigami 2.7 as Kirigami
import org.kde.kcm 1.2

SimpleKCM {
    Controls.Label {
        text: i18n("Do security scan")
    }
}
