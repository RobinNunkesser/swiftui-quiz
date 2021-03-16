#!/bin/sh
cd ..
pwd
ls -a
cd ..
pwd
ls -a
cd ..
pwd
ls -a
xcodebuild test -enableCodeCoverage YES -scheme Quiz -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 11' ONLY_ACTIVE_ARCH=NO
