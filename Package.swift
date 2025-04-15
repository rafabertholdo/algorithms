// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Algorithms",
  products: [
    .executable(
      name: "AlgorithmsExecutable",
      targets: ["AlgorithmsExecutable"]
    ),
    .library(
      name: "Algorithms",
      targets: ["Algorithms"]),
  ],
  targets: [
    .target(
      name: "Algorithms"),

    .executableTarget(
      name: "AlgorithmsExecutable",
      dependencies: [
        "Algorithms"
      ]),

    .testTarget(
      name: "AlgorithmsTests",
      dependencies: ["Algorithms"]
    ),
  ]
)
