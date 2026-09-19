#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'art'
    'bionic'
    'build/release'
    'development'
    'external/exfatprogs'
    'external/freetype'
    'external/libcupsfilters'
    'external/libhevc'
    'external/libjxl'
    'external/libpng'
    'external/libppd'
    'external/wpa_supplicant_8'
    'frameworks/av'
    'frameworks/base'
    'frameworks/opt/telephony'
    'hardware/interfaces'
    'hardware/nxp/nfc'
    'hardware/nxp/secure_element'
    'hardware/st/nfc'
    'packages/apps/Car/Settings'
    'packages/apps/ContactsPicker'
    'packages/apps/Settings'
    'packages/apps/TV'
    'packages/apps/TvSettings'
    'packages/modules/Bluetooth'
    'packages/modules/Nfc'
    'packages/modules/Telephony'
    'packages/modules/Uwb'
    'packages/modules/Wifi'
    'packages/modules/adb'
    'packages/providers/ContactsProvider'
    'packages/providers/DownloadProvider'
    'packages/providers/MediaProvider'
    'packages/providers/TelephonyProvider'
    'packages/services/BuiltInPrintService'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'system/core'
    'system/libfmq'
    'system/libufdt'
    'system/fs/fs_mgr'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/${repository}/"*.patch

    cd "${ROOT}"
done
