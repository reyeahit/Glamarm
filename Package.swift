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
            url: "https://github.com/reyeahit/Glamarm/releases/download/v1.0.7/GlamarmRobotSDK.xcframework.zip",
            checksum: "d36ba10d1738cccdf52cf88d954414b2c958d9e129b4402782d4927ab55d3edc"
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
