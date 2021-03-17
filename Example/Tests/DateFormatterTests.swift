//
//  DateFormatterTests.swift
//  MobilliumDateFormatter_Tests
//
//  Created by Mehmet Salih Aslan on 17.03.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
@testable import MobilliumDateFormatter

class DateFormatterTests: XCTestCase {
    
    func testStringToDate() {
        // Value
        let dateString = "2001-01-01 01:01:00"
        
        // Create a Date
        let date = Date.from(dateString, format: .dateTime)
        
        // Check
        XCTAssertNotNil(date)
    }
    
    func testDateToString() {
        // Value
        let date = Date()
        
        // Create a String
        let dateString = date.to(.MMMM)
        
        // Check
        XCTAssertNotNil(dateString)
    }
    
    func testTimeIntervalToString() {
        // Value
        let timeInterval = TimeInterval(exactly: 1549611277)!
        
        // Create a Date
        let date = Date.from(timeInterval)
        let dateString = date?.to(.dateTime)
        
        // Check
        XCTAssertNotNil(date)
        XCTAssertNotNil(dateString)
    }
    
}
