// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "xbuild",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.4"),
        .package(url: "https://github.com/JohnSundell/ShellOut", from: "2.3.0"),
    ],
    targets: [
        .target(
            name: "xbuild",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "ShellOut"
            ]
        ),
        .testTarget(
            name: "xbuildTests",
            dependencies: ["xbuild"]
        ),
    ]
)
