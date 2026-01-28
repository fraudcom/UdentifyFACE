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
        .package(url: "https://github.com/fraudcom/UdentifyCommons.git", exact: "25.4.0"),
         .package(url: "https://github.com/airbnb/lottie-spm.git", exact: "4.5.0"),
     ],
     targets: [
         .binaryTarget(
             name: "UdentifyFACE",
             url: "https://api.github.com/repos/fraudcom/mobile/releases/assets/330210156.zip",
             checksum: "012e7b32cba7a9bea728e096bbb47a91cee50f5f8b9262e379316de37aeaddd0"
         )
     ]
 )
