// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Braintree",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "Braintree", targets: ["Braintree"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from:"3.0.0"),
        .package(url: "https://github.com/MihaelIsaev/XMLParsing.git", .branch("master")),
        .package(url: "https://github.com/drmohundro/SWXMLHash.git", from: "4.0.0")
        ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "Braintree", dependencies: ["Vapor", "XMLParsing", "SWXMLHash"]),
        .testTarget(name: "BraintreeTests", dependencies: ["Braintree"]),
    ]
)
