# MobilliumDateFormatter

[![CI Status](https://img.shields.io/travis/aslanmehmetsalih/MobilliumDateFormatter.svg?style=flat)](https://travis-ci.org/aslanmehmetsalih/MobilliumDateFormatter)
[![Version](https://img.shields.io/cocoapods/v/MobilliumDateFormatter.svg?style=flat)](https://cocoapods.org/pods/MobilliumDateFormatter)
[![License](https://img.shields.io/cocoapods/l/MobilliumDateFormatter.svg?style=flat)](https://cocoapods.org/pods/MobilliumDateFormatter)
[![Platform](https://img.shields.io/cocoapods/p/MobilliumDateFormatter.svg?style=flat)](https://cocoapods.org/pods/MobilliumDateFormatter)

## Requirements

- iOS 8.0+

## Installation

MobilliumDateFormatter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MobilliumDateFormatter'
```

## Usage

MobilliumDateFormatter comes with these formats:
```swift
/// Format: yyyy-MM-dd
case date

/// Format: yyyy-MM-dd HH:mm:ss
case dateTime

/// Format: dd.MM.yyyy
case readableDate

/// Format: dd.MM.yyyy HH:mm
case readableDateTime

/// Format: HH:mm
case readableTime

/// Format: d MMMM yyyy
case readableDateWithSpace

/// Format: d MMMM yyyy HH:mm
case readableDateTimeWithSpace
```

or Create your format:
```swift
import MobilliumDateFormatter

extension Date.Format {
static let monthName = Date.Format.custom(rawValue: "MMMM")
}
```

Set locale(optional):
```swift
MobilliumDateFormatter.locale = Locale(identifier: "us")
```

String to Date:
```swift
let dateString = "2001-01-01 01:01:00"
let date = Date.from(dateString, format: .dateTime)
```

Date to String:
```swift
let date = Date()
let dateString = date.to(.monthName)
```

TimeInterval to Date:
```swift
let timeInterval = TimeInterval(exactly: 1549611277)!
let date = Date.from(timeInterval)
```

## License

MobilliumDateFormatter is available under the MIT license. See the LICENSE file for more info.
