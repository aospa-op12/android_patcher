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
    'hardware/interfaces'
    'hardware/nxp/secure_element'
    'hardware/st/nfc'
    'packages/apps/ContactsPicker'
    'packages/apps/Settings'
    'packages/apps/TV'
    'packages/modules/Bluetooth'
    'packages/modules/Nfc'
    'packages/modules/Uwb'
    'packages/modules/adb'
    'packages/providers/ContactsProvider'
    'packages/providers/MediaProvider'
    'packages/providers/TelephonyProvider'
    'packages/services/Telecomm'
    'packages/services/Telephony'
    'system/core'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/${repository}/"*.patch

    cd "${ROOT}"
done
