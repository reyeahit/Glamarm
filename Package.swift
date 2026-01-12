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
            url: "https://github.com/reyeahit/Glamarm/releases/download/v1.0.2/GlamarmRobotSDK.xcframework.zip",
            checksum: "603162323736321b8378812d07a24be73404782d225eee5064c222d3b79f02be"
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
