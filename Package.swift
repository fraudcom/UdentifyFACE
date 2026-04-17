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
        .package(url: "https://github.com/fraudcom/UdentifyCommons.git", exact: "26.1.3"),
         .package(url: "https://github.com/airbnb/lottie-spm.git", exact: "4.5.0"),
     ],
     targets: [
         .binaryTarget(
             name: "UdentifyFACE",
             url: "https://api.github.com/repos/fraudcom/mobile/releases/assets/397880893.zip",
             checksum: "2783e02aea8badb079348140898e3cc01141c138008929cd03766db96875d898"
         )
     ]
 )
