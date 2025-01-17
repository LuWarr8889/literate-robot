// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "ViewPreviewPackage",
    platforms: [.iOS(.v15), .macOS(.v12)], // Define minimum platforms
    products: [
        .library(
            name: "ViewPreviewPackage",
            targets: ["ViewPreviewPackage"]
        )
    ],
    targets: [
        .target(
            name: "ViewPreviewPackage",
            dependencies: ["ViewPreviewPackageMacros"]
        ),
        .macro(
            name: "ViewPreviewPackageMacros"
        ),
        .testTarget(
            name: "ViewPreviewPackageTests",
            dependencies: ["ViewPreviewPackageMacros"]
        )
    ]
)
