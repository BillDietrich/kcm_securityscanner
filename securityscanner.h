/**
 * SPDX-FileCopyrightText: 2022 Bill Dietrich <gith4@billdietrich.me>
 * SPDX-License-Identifier: MIT
 */

#pragma once

#include <KQuickAddons/ManagedConfigModule>

class SecurityScanner : public KQuickAddons::ManagedConfigModule
{
    Q_OBJECT
public:
    SecurityScanner(QObject *parent, const KPluginMetaData &data, const QVariantList &args);
};
