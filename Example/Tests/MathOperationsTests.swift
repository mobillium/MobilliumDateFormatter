//
//  MathOperationsTests.swift
//  MobilliumDateFormatter_Tests
//
//  Created by Mehmet Salih Aslan on 17.03.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
@testable import MobilliumDateFormatter

class MathOperationsTests: XCTestCase {
    
    func testAddMillisecond() {
        // Value
        let date = Date(timeIntervalSince1970: 1614778571) // 2021-03-03 13:36:11
        let date2 = Date(timeIntervalSince1970: 1614778576) // 2021-03-03 13:36:16
        
        // Create result Date
        let resultDate = date.add(.milisecond, count: 5000)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
    func testAddSecond() {
        // Value
        let date = Date(timeIntervalSince1970: 1614778571) // 2021-03-03 13:36:11
        let date2 = Date(timeIntervalSince1970: 1614778576) // 2021-03-03 13:36:16
        
        // Create result Date
        let resultDate = date.add(.second, count: 5)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
    func testAddMinute() {
        // Value
        let date = Date(timeIntervalSince1970: 1549611277) // 2019-02-08 07:34:37
        let date2 = Date(timeIntervalSince1970: 1549608877) // 2019-02-08 06:54:37
        
        // Create result Date
        let resultDate = date.add(.minute, count: -40)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
    func testAddHour() {
        // Value
        let date = Date(timeIntervalSince1970: 1549611277) // 2019-02-08 07:34:37
        let date2 = Date(timeIntervalSince1970: 1549622077) // 2019-02-08 10:34:37
        
        // Create result Date
        let resultDate = date.add(.hour, count: 3)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
    func testAddDay() {
        // Value
        let date = Date(timeIntervalSince1970: 1549611277) // 2019-02-08 07:34:37
        let date2 = Date(timeIntervalSince1970: 1549697677) // 2019-02-09 07:34:37
        
        // Create result Date
        let resultDate = date.add(.day, count: 1)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
    func testAddWeekOfYear() {
        // Value
        let date = Date(timeIntervalSince1970: 1549611277) // 2019-02-08 07:34:37
        let date2 = Date(timeIntervalSince1970: 1550216077) // 2019-02-15 07:34:37
        
        // Create result Date
        let resultDate = date.add(.weekOfYear, count: 1)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
    func testAddMonth() {
        // Value
        let date = Date(timeIntervalSince1970: 1614863780) // 2021-03-03 13:36:11
        let date2 = Date(timeIntervalSince1970: 1617542180) // 2021-04-03 13:36:16
        
        // Create result Date
        let resultDate = date.add(.month, count: 1)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
    func testAddYear() {
        // Value
        let date = Date(timeIntervalSince1970: 1617542180) // 2021-03-03 13:36:11
        let date2 = Date(timeIntervalSince1970: 1649078180) // 2022-03-03 13:36:16
        
        // Create result Date
        let resultDate = date.add(.year, count: 1)
        
        // Check
        XCTAssertEqual(date2, resultDate)
    }
    
}
