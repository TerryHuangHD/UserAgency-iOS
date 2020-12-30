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
        .target(name: "UserAgency", dependencies: []),
        .testTarget(name: "UserAgencyTests", dependencies: ["UserAgency"])
    ],
    swiftLanguageVersions: [.v5]
)