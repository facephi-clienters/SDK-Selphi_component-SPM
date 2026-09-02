// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDK-Selphi_component-SPM",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SDK-Selphi_component-SPM",
            targets: ["SDK-Selphi_component-SPM", "selphiComponent"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.10.0")),
        .package(url: "https://github.com/facephi-clienters/Selphi-SPM.git", .upToNextMinor(from: "6.3.2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SDK-Selphi_component-SPM",
            dependencies: ["SDK-CorePackage-SPM", "Selphi-SPM", "selphiComponent"]),
        .binaryTarget(name: "selphiComponent",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKSelphiComponent/2.10.0/selphiComponent.zip",
        checksum: "54fb91c0d2dc48fe17f184f197a758ac9e22dd21ab4230e4fbd3521e575918ca")
    ]
)
