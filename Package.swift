// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "lips",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "lips",
            targets: [
                "lips",
                "lips_sdk_core",
                "lips_effect_player",
                "lips_scripting",
                "lips_face_tracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/face_tracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "lips",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/lips.zip",
            checksum: "38b4fe1cfe24d579c93e9f546d28fd212881b35e218d67a987366b13b0b9b55f"
        ),
        .target(
            name: "lips_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "lips_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "lips_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
        .target(
            name: "lips_face_tracker",
            dependencies: [
                .product(
                    name: "face_tracker",
                    package: "face_tracker"
                ),
            ]
        ),
    ]
)
