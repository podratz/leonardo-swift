// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Leonardo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Leonardo",
            targets: ["Leonardo"]),
    ], 
    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Leonardo", 
            dependencies: [
                .product(name: "Numerics", package: "swift-numerics")]),
        .testTarget(
            name: "LeonardoTests",
            dependencies: ["Leonardo"]),
    ]
)
