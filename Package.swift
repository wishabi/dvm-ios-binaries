// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "dvm-ios-binaries",
    platforms: [
           .iOS(.v14)
       ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "dvm-sdk",
            targets: ["dvm-sdk-binary"]),
    ],
    targets: [
        // The xcframework is distributed as a zipped GitHub Release asset (not committed to
        // git) and consumed remotely. This keeps the repo small and avoids GitHub's 100 MB
        // file limit, which the framework now exceeds once dSYMs are included.
      .binaryTarget(
          name: "dvm-sdk-binary",
          url: "https://github.com/wishabi/dvm-ios-binaries/releases/download/3.6.0/dvm-sdk.xcframework.zip",
          checksum: "f51b9fa7e3e9f8df05185f260e19440436d2f75b3bbbe4e12321df86a32a1908"
      )
    ]
)
