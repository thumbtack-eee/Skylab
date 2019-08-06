// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Skylab",
    products: [
        .executable(name: "Skylab", targets: ["Skylab"]),
    ],
    dependencies: [
        .package(path: "../antlr4-swift")
    ],
    targets: [
        .target(
            name: "Skylab",
            dependencies: [
                "Antlr4",
            ]
        ),
    ]
)
