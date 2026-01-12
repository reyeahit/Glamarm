// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GlamarmRobotSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(name: "GlamarmRobotSDK", targets: ["GlamarmRobotSDK", "GlamarmRobotSDKDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.5")
    ],
    targets: [
        .binaryTarget(
            name: "GlamarmRobotSDK",
            url: "https://github.com/reyeahit/Glamarm/releases/download/v1.0.4/GlamarmRobotSDK.xcframework.zip",
            checksum: "cc785544c3f67a36759a6562de39046221400749414d2d922d1c3907a0381dfe"
        ),
        .target(
            name: "GlamarmRobotSDKDependencies",
            dependencies: [
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket")
            ],
            path: "Sources/GlamarmRobotSDKDependencies"
        )
    ]
)
