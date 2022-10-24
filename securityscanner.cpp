/**
 * SPDX-FileCopyrightText: 2022 Bill Dietrich <gith4@billdietrich.me>
 * SPDX-License-Identifier: MIT
 */

#include "securityscanner.h"

#include <KPluginFactory>

K_PLUGIN_CLASS_WITH_JSON(SecurityScanner, "package/kcm_securityscanner.json")

SecurityScanner::SecurityScanner(QObject *parent, const KPluginMetaData &data, const QVariantList &args)
    : KQuickAddons::ManagedConfigModule(parent, data, args)
{
    setButtons(Help | Apply | Default);
}

#include "securityscanner.moc"
