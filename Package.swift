// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "swift-attributed-strings",
  platforms: [
    .iOS(.v9),
    .macOS(.v10_11)
  ],
  products: [
    .library(
      name: "AttributedStrings",
      targets: ["AttributedStrings"]
    ),
  ],
  dependencies: [
    .package(
      name: "SnapshotTesting",
      url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
      .upToNextMinor(from: "1.9.0")
    )
  ],
  targets: [
    .target(name: "AttributedStrings"),
    .testTarget(
      name: "AttributedStringsTests",
      dependencies: [
        .target(name: "AttributedStrings"),
        .product(
          name: "SnapshotTesting",
          package: "SnapshotTesting"
        )
      ]
    ),
  ]
)
