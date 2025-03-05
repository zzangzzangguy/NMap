// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NMap",
    platforms: [.iOS(.v13)], // iOS 13 이상 지원
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NMap",
            targets: ["NMap", "NMapsMap", "NMapsGeometry"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NMap",
            dependencies: ["NMapsMap", "NMapsGeometry"]),
        .binaryTarget(
            name: "NMapsMap",
            path: "Frameworks/NMapsMap.xcframework"),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "Frameworks/NMapsGeometry.xcframework"),
        .testTarget(
            name: "NMapTests",
            dependencies: ["NMap"]
        ),
    ]
)
