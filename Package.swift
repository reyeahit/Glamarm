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
            url: "https://github.com/reyeahit/Glamarm/releases/download/v1.0.8/GlamarmRobotSDK.xcframework.zip",
            checksum: "b129ed58f86e23018f0bc387546631c935e1677218ae63546e47fc2666234199"
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
