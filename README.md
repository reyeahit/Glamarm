# GlamarmRobotSDK (Binary SPM)

This package exposes the closed-source `GlamarmRobotSDK` as a binary Swift Package.

## Release steps
1. Build `GlamarmRobotSDK.xcframework` and zip it as `GlamarmRobotSDK.xcframework.zip`.
2. Create a GitHub Release and upload the zip as a release asset.
3. Update `Package.swift`:
   - `url` to the release asset URL
   - `checksum` to the output of `swift package compute-checksum GlamarmRobotSDK.xcframework.zip`

## Add via SPM
In Xcode: File -> Add Packages -> paste the repo URL:
`https://github.com/reyeahit/Glamarm`
