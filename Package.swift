// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "Telegraph",
  platforms: [
    .iOS(.v13),
    .tvOS(.v9),
    .macOS(.v10_10),
  ],
  products: [
    .library(
      name: "Telegraph",
      targets: ["Telegraph"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.5"),
    .package(path: "../HTTPParserC"),
  ],
  targets: [
    .target(
      name: "Telegraph",
      dependencies: ["CocoaAsyncSocket", "HTTPParserC"],
      path: "Sources"
    ),
    .testTarget(
      name: "TelegraphTests",
      dependencies: ["CocoaAsyncSocket", "HTTPParserC", "Telegraph"],
      path: "Tests"
    ),
  ]
)
