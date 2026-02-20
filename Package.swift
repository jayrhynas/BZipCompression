// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "BZipCompression",
    platforms: [
        .iOS("5.0"), .macOS("10.7")
    ],
    products: [
        .library(name: "BZipCompression", targets: ["BZipCompression"])
    ],
    targets: [
        .target(
            name: "BZipCompression",
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedLibrary("bz2")
            ]
        )
    ]
)