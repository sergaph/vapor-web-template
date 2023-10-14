// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "vapor-web-template",
    platforms: [
       .macOS(.v12)
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.83.1"),
        .package(url: "https://github.com/vapor/leaf.git", from: "4.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Leaf", package: "leaf"),
            ]
        ),
//        .testTarget(name: "AppTests", dependencies: [
//            .target(name: "App"),
//            .product(name: "XCTVapor", package: "vapor"),
//
//            // Workaround for https://github.com/apple/swift-package-manager/issues/6940
//            .product(name: "Vapor", package: "vapor"),
//        ])
    ]
)
