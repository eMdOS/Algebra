// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Algebra",
    products: [
        .library(name: "Algebra", targets: ["Algebra"])
    ],
    dependencies: [],
    targets: [
        .target(name: "Algebra", dependencies: []),
        .testTarget(name: "AlgebraTests", dependencies: ["Algebra"])
    ],
    swiftLanguageVersions: [.v5]
)
