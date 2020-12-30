![UserAgency: User-Agent generator in Swift](https://raw.githubusercontent.com/TerryHuangHD/UserAgency-iOS/master/UserAgency.png)

[![Build Status](https://travis-ci.com/TerryHuangHD/UserAgency-iOS.svg?branch=main)](https://travis-ci.com/TerryHuangHD/UserAgency-iOS)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![Cocoapos](https://cocoapod-badges.herokuapp.com/v/UserAgency/badge.png)](https://cocoapods.org/pods/UserAgency)
[![Cocoapos](https://cocoapod-badges.herokuapp.com/p/UserAgency/badge.png)](https://cocoapods.org/pods/UserAgency)
[![GitHub license](https://img.shields.io/github/license/TerryHuangHD/UserAgency-iOS)](https://github.com/TerryHuangHD/UserAgency-iOS/blob/main/LICENSE)

UserAgency is an iOS/macOS User-Agent generator library written in swift. Provides story-oriented usage, and comprehensive way to mock real life data.

# Install

### CocoaPods

Add it in your Podfile

```gradle
pod 'UserAgency', '~> 0.5'
```

### Swift Package Manager

```SPM
let package = Package(
    dependencies: [
        .package(url: "https://github.com/TerryHuangHD/UserAgency-iOS.git", from: "0.5")
    ],
)
```

### Download Framework

Download framework file from [releases page](https://github.com/TerryHuangHD/UserAgency-iOS/releases)

* iOS Version (Any iOS Device: arm64, armv7)
* Mac Version (Any Mac: Apple Silicon, Intel)

# Requirements

* iOS: 9
* macOS: 10.15

# Usage

* iPhone & Safari:

```swift
import UserAgency
```

```swift
UserAgency()
    .setDevice(iPhone())
    .setApp(Safari())
    .getString()
```

# Support
Device | OS | Chrome | Safari | Firefox | Edge | IE
----- |  ----- | ----- | ----- | ----- | ----- | -----
AndroidPhone | Android | ✅ | ❌ | ✅ | ✅ | ❌
AndroidPad | Android | ✅ | ❌ | ✅ | ✅ | ❌
iPhone | iOS | ✅ | ✅ | ✅ | ✅ | ❌
iPad | iOS | ✅ | ✅ | ✅ | ✅ | ❌
Mac | macOS | ✅ | ✅ | ✅ | ✅ | ❌
WindowsPC | Windows | ✅ | ❌ | ✅ | ✅ | ✅

MIT License
--------

    Copyright (c) 2020 Terry Huang

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
