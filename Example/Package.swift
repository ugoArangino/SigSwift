import PackageDescription

let package = Package(
    name: "Example",
    dependencies: [
        .Package(url: "../", majorVersion: 1, minor: 0),
    ]
)
