// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"]),
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift", "Realm"])
    ],
    dependencies: [
    ],
    targets: [
            .binaryTarget(
      name: "Realm",
      url: "https://github.com//releases/download/v10.38.0/Realm.xcframework.zip",
      checksum: "e8d685e9db44db51968f97d9d4b6a8ef29e9d4fcdd4a1c48e8c84e2d7b108c53"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com//releases/download/v10.38.0/RealmSwift.xcframework.zip",
      checksum: "3ab6bd86564fe8dbdaaa58ca7fba626c34efa386a41d0ba153d029fa737923f0"
    )
    ]
)