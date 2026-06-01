// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDK-Selphi_component-SPM",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SDK-Selphi_component-SPM",
            targets: ["SDK-Selphi_component-SPM", "selphiComponent"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.8.1")),
        .package(url: "https://github.com/facephi-clienters/Selphi-SPM.git", .upToNextMinor(from: "6.2.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SDK-Selphi_component-SPM",
            dependencies: ["SDK-CorePackage-SPM", "Selphi-SPM", "selphiComponent"]),
        .binaryTarget(name: "selphiComponent",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKSelphiComponent/2.8.2/selphiComponent.zip",
        checksum: "e800af4517e7dd9469ce17ba6f2e6b1a4d894a7ec8f3706dc1b10a90174369a6")
    ]
)
