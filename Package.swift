// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "UserAgency",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "UserAgency", targets: ["UserAgency"])
    ],
    targets: [
        .target(name: "UserAgency", dependencies: [], path: "UserAgency"),
        .testTarget(name: "UserAgencyTests", dependencies: ["UserAgency"], path: "UserAgencyTests")
    ],
    swiftLanguageVersions: [.v5]
)
