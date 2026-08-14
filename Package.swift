// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "UdentifyFACE",
    platforms: [
        .iOS(.v13)
    ],
    products: [
         .library(
             name: "UdentifyFACE",
             targets: ["UdentifyFACE"]),  // Point directly to the binary target
     ],
     dependencies: [
        .package(url: "https://github.com/fraudcom/UdentifyCommons.git", exact: "26.3.0814"),
         .package(url: "https://github.com/airbnb/lottie-spm.git", exact: "4.5.0"),
     ],
     targets: [
         .binaryTarget(
             name: "UdentifyFACE",
             url: "https://api.github.com/repos/fraudcom/mobile/releases/assets/514147436.zip",
             checksum: "2b9782a22f38171672a9b58b066d568baab5d329e54df6fb9e19a81029dced5d"
         )
     ]
 )
