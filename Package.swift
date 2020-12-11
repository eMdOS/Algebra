// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Algebra",
    products: [
        .library(name: "Algebra", targets: ["Algebra"])
    ],
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat", .upToNextMajor(from: "0.47.0"))
    ],
    targets: [
        .target(name: "Algebra", dependencies: []),
        .testTarget(name: "AlgebraTests", dependencies: ["Algebra"])
    ],
    swiftLanguageVersions: [.v5]
)
