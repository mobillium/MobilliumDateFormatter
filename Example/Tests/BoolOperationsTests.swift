//
//  BoolOperationsTests.swift
//  MobilliumDateFormatter_Tests
//
//  Created by Mehmet Salih Aslan on 17.03.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
@testable import MobilliumDateFormatter

class BoolOperationsTests: XCTestCase {
    
    func testIsNextYear() {
        // Value
        let now = Date()
        
        // Operation
        guard let nextYearDate = now.add(.year, count: 1) else {
            XCTAssert(false)
            return
        }
        
        // Check
        XCTAssertTrue(nextYearDate.isNextYear)
    }
    
    func testIsThisYear() {
        // Value
        let now = Date()
        
        // Check
        XCTAssertTrue(now.isThisYear)
    }
    
    func testIsLastYear() {
        // Value
        let now = Date()
        
        // Operation
        guard let lastYearDate = now.add(.year, count: -1) else {
            XCTAssert(false)
            return
        }
        
        // Check
        XCTAssertTrue(lastYearDate.isLastYear)
    }
    
    func testThisWeek() {
        // Value
        let now = Date()
        
        // Check
        XCTAssertTrue(now.isThisWeek)
    }
    
    func testLastWeek() {
        // Value
        let now = Date()
        
        // Operation
        guard let lastWeakDate = now.add(.weekOfYear, count: -1) else {
            XCTAssert(false)
            return
        }
        
        XCTAssertTrue(lastWeakDate.isLastWeek)
    }
    
    func testNextWeek() {
        // Value
        let now = Date()
        
        // Operation
        guard let nextWeakDate = now.add(.weekOfYear, count: 1) else {
            XCTAssert(false)
            return
        }
        
        XCTAssertTrue(nextWeakDate.isNextWeek)
    }
    
    func testIsNextMonth() {
        // Value
        let now = Date()
        
        // Operation
        guard let nextMonthDate = now.add(.month, count: 1) else {
            XCTAssert(false)
            return
        }
        
        // Check
        XCTAssertTrue(nextMonthDate.isNextMonth)
    }
    
    func testIsThisMonth() {
        // Value
        let now = Date()
        
        // Check
        XCTAssertTrue(now.isThisMonth)
    }
    
    func testIsLastMonth() {
        // Value
        let now = Date()
        
        // Operation
        guard let lastMonthDate = now.add(.month, count: -1) else {
            XCTAssert(false)
            return
        }
        
        // Check
        XCTAssertTrue(lastMonthDate.isLastMonth)
    }
    
    func testIsToday() {
        // Value
        let now = Date()
        
        // Check
        XCTAssertTrue(now.isToday)
    }
    
    func testIsTomorrow() {
        // Value
        let now = Date()
        
        // Operation
        guard let tomorrow = now.add(.day, count: 1) else {
            XCTAssert(false)
            return
        }
        
        // Check
        XCTAssertTrue(tomorrow.isTomorow)
    }
    
    func testIsYesterday() {
        // Value
        let now = Date()
        
        // Operation
        guard let yerterday = now.add(.month, count: -1) else {
            XCTAssert(false)
            return
        }
        
        // Check
        XCTAssertFalse(yerterday.isYesterday)
    }
    
}
