#!/bin/sh -ex


API_TOKEN='85630b4728f81a6d3a1c4c9b58818936_MTMwNjUwNDIwMTMtMDktMTUgMTA6NTY6NTguMDE3Njcz'
TEAM_TOKEN='47826607572312d2e9e90d07558d3f3d_MzEwMzkyMjAxMy0xMi0wNyAwOTowNDo0OC4zOTgzNzc'
LIST='maimai_Dev_test'

NOTES='配布テスト！！！'

scriptPath=$1/jenkins
cd scriptPath
provisionPath=$(ls *.mobileprovision)

buildPath=$1/build
cd $buildPath
appPath=$(ls -F | grep .app/)
appPath=${appPath%.*}.app
ipaPath=${appPath%.*}.ipa

xcrun -sdk "iphoneos" PackageApplication $appPath -o $ipaPath -embed $provisionPath


filename=$(ls *.ipa)

curl http://testflightapp.com/api/builds.json\
 -F file=@$filename\
 -F api_token=$API_TOKEN\
 -F team_token=$TEAM_TOKEN\
 -F notes=$NOTES\
 -F notify=True\
 -F distribution_lists=$LIST