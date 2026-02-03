# UdentifyFACE SDK

**Important:** This repository solely hosts the `Package.swift` manifest file, enabling easy integration of the FACE SDK into your Swift projects using Swift Package Manager (SPM).

## About UdentifyFACE SDK

UdentifyFACE is a SDK for iOS applications that provides face detection and verification capabilities.

## Requirements
- iOS 13.0+
- Xcode 16.2+
- Swift 5+

## Installation

### Swift Package Manager

You can add UdentifyFACE to your project via Swift Package Manager. Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/fraudcom/UdentifyFACE.git", from: "x.y.z")
]
```

Or in Xcode:
1. File > Add Packages...
2. Enter package URL: `https://github.com/fraudcom/UdentifyFACE.git`
3. Select the version you want to use

## Dependencies

### Required Dependencies

UdentifyFACE requires the following dependencies:

1. **Lottie (Required Version: 4.5.0)**
   - ⚠️ **Important**: Add Lottie as a binary framework, NOT as a Swift Package in order to avoid duplicate symbol warnings.
   - Download from: [Lottie Releases](https://github.com/airbnb/lottie-ios/releases/tag/4.5.0)
   - Why binary framework?
     - Using Lottie via SPM while using UdentifyFACE will cause duplicate symbol warnings, but they’re harmless if they’re from the same SPM package.
     - Using Lottie as a binary framework prevents these warnings
     - The SDK is built with Lottie SPM internally, so using Lottie as binary framework in your app ensures proper symbol isolation

2. **UdentifyCommons**
   - This dependency is automatically handled by SPM
   - No additional setup required

### Integration Steps

1. Add UdentifyFACE using SPM as described above
2. Download Lottie 4.5.0 binary framework
3. Add Lottie.xcframework to your project:
   - Drag and drop the framework into your Xcode project's "Frameworks" folder
   - Ensure "Copy items if needed" is checked
   - Add the framework to your target's "Frameworks, Libraries, and Embedded Content" section
   - Set "Embed & Sign" as the embedding option

## Common Issues

### Duplicate Symbols Warning

If you see a warning like this:
```
Class _TtC11_LottieStub10LottieStub is implemented in both [...] One of the two will be used. Which one is undefined.
```

This means you're using Lottie via SPM instead of as a binary framework. To resolve:
1. Remove Lottie SPM dependency from your project
2. Follow the integration steps above to add Lottie as a binary framework

## License

UdentifyFACE is proprietary software. Copyright © 2026 Fraud.com International Ltd. All rights reserved. See the [LICENSE](LICENSE) file for more info.

## 🙏 Third-Party Licenses

This project uses the following third-party libraries:

### Lottie for iOS
- **License:** Apache License 2.0
- **Repository:** [https://github.com/airbnb/lottie-spm](https://github.com/airbnb/lottie-spm)
- **Copyright:** Copyright 2018 Airbnb, Inc.

For complete third-party license information, see [THIRD_PARTY_LICENSES.md](THIRD_PARTY_LICENSES.md).

