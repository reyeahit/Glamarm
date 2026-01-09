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
            url: "https://github.com/reyeahit/Glamarm/releases/download/v1.0.0/GlamarmRobotSDK.xcframework.zip",
            checksum: "82c356908c344f209eb1ba3cf48f9dc619029bdc34e7303e24e0802f689f1730"
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
