// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "leonardo-swift",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Leonardo",
            targets: ["Leonardo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Leonardo", 
            dependencies: [
                .product(name: "Numerics", package: "swift-numerics")]),
        .testTarget(
            name: "LeonardoTests",
            dependencies: ["Leonardo"]),
    ]
)
