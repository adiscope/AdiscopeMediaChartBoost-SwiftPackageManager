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
    dependencies: [
        .package(url: "https://github.com/adiscope/Adiscope-iOS-ChartBoost.git", exact: "5.0.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaChartBoostTarget",
            dependencies: [
                .target(name: "AdiscopeMediaChartBoost"),
                .product(name: "AdiscopeWithChartBoost", package: "Adiscope-iOS-ChartBoost"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.2/AdiscopeMediaChartBoost.zip",
            checksum: "49f0acccbfe8e3b1576c5fa298e3f4af81d84e6af4d891260cd362e53318508a"
        ),
    ]
)
