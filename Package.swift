// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CWireguardTools",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CWireguardTools",
            targets: ["CWireguardTools"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CWireguardTools",
			path:"./wireguard-tools/contrib/embeddable-wg-library",
			exclude:["./test.c", "./README", "./Makefile"],
			publicHeadersPath:".",
			cSettings: [.define("RUNSTATEDIR", to: "\"/var/run\"")]),
		// .target(name: "WireguardTools", dependencies: ["CWireguardTools"])
    ]
)
