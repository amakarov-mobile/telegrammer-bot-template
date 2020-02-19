// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "telegrammer-bot-template",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .executable(name: "telegrammer-bot-template", targets: ["telegrammer-bot-template"])
    ],
    dependencies: [
        .package(url: "https://github.com/givip/Telegrammer.git", from: "1.0.0-alpha")
    ],
    targets: [
        .target(
            name: "telegrammer-bot-template",
            dependencies: ["Telegrammer"]),
        .testTarget(
            name: "telegrammer-bot-templateTests",
            dependencies: ["telegrammer-bot-template"]),
    ]
)
