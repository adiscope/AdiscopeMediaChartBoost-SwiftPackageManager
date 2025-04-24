// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaChartBoost",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaChartBoost",
            targets: ["AdiscopeMediaChartBoostTarget"]),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaChartBoostTarget",
            dependencies: [
                .target(name: "AdiscopeMediaChartBoost"),
                .target(name: "ChartboostSDK"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaChartBoost.zip",
            checksum: "841c1bc563f316ba8b6b2fcb389602209d39afa1c8a468a7e07960dc25393b4f"
        ),
        .binaryTarget(
            name: "ChartboostSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/ChartboostSDK.xcframework.zip",
            checksum: "768902d29c78c1dc8d7ea1da58ddd488bf33b12ef71003e9d5048bba6d60db12"
        ),
    ]
)
