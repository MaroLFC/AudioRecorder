#!/bin/bash
echo "Uploading IPA to Appstore Connect..."
#Path is "/BUILD_PATH/<ORG_ID>.<PROJECT_ID>.<BUILD_TARGET_ID>/.build/last/<BUILD_TARGET_ID>/build.ipa"
path="${UNITY_PLAYER_PATH}"
if xcrun altool --upload-app --type ios -f $path -u a.alaa@cryptydgames.com -p eqcj-eavm-jbtj-gcfr ; then
    echo "Upload IPA to Appstore Connect finished with success"
else
    echo "Upload IPA to Appstore Connect failed"
fi