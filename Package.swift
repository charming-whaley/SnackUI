// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnackUI",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "SnackUI",
            targets: ["SnackUI"]),
    ],
    targets: [
        .target(name: "SnackUI"),
    ]
)
