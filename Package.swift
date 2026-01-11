// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "iShapeTriangulation",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "iShapeTriangulation",
            targets: ["iShapeTriangulation"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Aurorin-CAD/iGeometry", .revision("12726810db407c773fb9dc309bbff3ac316ba6f8"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "iShapeTriangulation",
            dependencies: ["iGeometry"]),
        .testTarget(
            name: "iShapeTriangulationTests",
            dependencies: ["iShapeTriangulation"]),
    ]
)
