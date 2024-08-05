// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/tipsportios/Starscream", .branchItem("certs")),
//        .package(path: "../ts-Starscream")
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
//        .target(name: "SocketIO", dependencies: [.product(name: "Starscream", package: "ts-Starscream")]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
