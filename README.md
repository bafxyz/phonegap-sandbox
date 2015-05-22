Phonegap sandbox project
======

## Project setup

### Dependencies 
- node.js (https://nodejs.org/download/)
- android sdk (http://developer.android.com/sdk/index.html)

### Modules
bower (http://bower.io/#install-bower)
grunt (http://gruntjs.com/getting-started)

### Installation
- bower install
- npm install

### Run
grunt dev
grunt connect:keepalive

### Compile
Android:
cordova platform add android;
cordova build android
cordova run android
cordova emulate android

### Sign Android app

Method 1:
This is the method I used to use and it isn’t Cordova CLI specific (it’s part of the Java SDK build tools and this method is part of their standard documentation). After you have created your APK (cordova build android --release) you can run the following command:

jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore app.keystore platforms/android/build/outputs/apk/MainActivity-release-unsigned.apk app-keystone; 
zipalign -v 4 platforms/android/build/outputs/apk/MainActivity-release-unsigned.apk phonegap-app.apk;

Jarsigner will prompt for the password and sign the APK.

Method 2 (best):
Part of the CLI workflow
This is now my preferred method and hooks directly into the cordova build android --release command.
Create an ant.properties file in platforms/android/ with a keystore path and alias name:

key.store=/path/to/keystore/release_key_name.keystore
key.alias=alias_name

The standard Cordova CLI release build process will now prompt for the password and automatically sign the APK, ready for upload to Google Play, or other distribution method. The APK will be created at platforms/android/ant-build/app_name-release.apk.


IOS:
cordova platforms add ios;
cordova build ios;
cordova emulate ios -d;

open platforms/ios folder in xcode and arhive the project

All platforms:
cordova build


### Install to all atached devices
adb devices | tail -n +2 | cut -sf 1 | xargs -I {} adb -s {} install -r MainActivity-debug.apk

### Debug
Method 1:
adb logcat

Method 2 (best):
http://stackoverflow.com/questions/20396372/ibm-worklight-how-do-i-enable-webview-debugging-in-android
https://developer.chrome.com/devtools/docs/remote-debugging#configure-webview
