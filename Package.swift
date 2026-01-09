// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GlamarmRobotSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(name: "GlamarmRobotSDK", targets: ["GlamarmRobotSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "GlamarmRobotSDK",
            url: "https://github.com/reyeahit/Glamarm/releases/download/v1.0.0/GlamarmRobotSDK.xcframework.zip",
            checksum: "3845dcb080b3b4e8f2db0ae48bbcdd5c209cd6fa6fece6ea6136f50b22fb51f5"
        )
    ]
)
