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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaChartBoost.zip",
            checksum: "f4be793aafdd780df20c5d4ba2d80eda6b03474e1722e34495ea03af40043df6"
        ),
    ]
)
