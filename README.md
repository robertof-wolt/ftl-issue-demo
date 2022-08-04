# ftl_issue_demo

A project to demonstrate an issue with test failures not reported in Firebase Test Lab.

## How to reproduce in Firebase Test Lab

### Build the app

1. Change directory to `android`
2. Build the flutter app with `flutter build apk`
3. Build the Android test apk with `./gradlew app:assembleAndroidTest`
4. Build the debug version of the apk with `./gradlew app:assembleDebug -Ptarget=$(pwd)/../integration_test/demo_test.dart`

### Run the test in Firebase Test Lab

1. Run an instrumentation test from the Firebase console
2. Use as App APK `build/app/outputs/apk/debug/app-debug.apk`
3. Use as test APK `build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk`
4. Select a device and start the test run
