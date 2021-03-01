//
//  MonthCheckTests.swift
//  MobilliumDateFormatter_Tests
//
//  Created by Murat Celebi on 1.03.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
import MobilliumDateFormatter

class MonthCheckTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIsNextMonth() {
        // Value
        let now = Date()
        
        // Check
        guard
            let nextMonthDate = Calendar.current.date(byAdding: .month, value: +1, to: now)
        else {
            XCTAssert(false)
            return
        }
        XCTAssertTrue(nextMonthDate.isNextMonth())
        XCTAssertFalse(nextMonthDate.isLastMonth())
        XCTAssertFalse(nextMonthDate.isThisMonth())
    }
    
    func testIsThisMonth() {
        // Value
        let now = Date()
        
        // Check
        guard
            let currentMonthDate = Calendar.current.date(byAdding: .month, value: 0, to: now)
        else {
            XCTAssert(false)
            return
        }
        XCTAssertTrue(currentMonthDate.isThisMonth())
        XCTAssertFalse(currentMonthDate.isNextMonth())
        XCTAssertFalse(currentMonthDate.isLastMonth())
    }
    
    func testIsLastMonth() {
        // Value
        let now = Date()
        
        // Check
        guard
            let lastMonthDate = Calendar.current.date(byAdding: .month, value: -1, to: now)
        else {
            XCTAssert(false)
            return
        }
        XCTAssertTrue(lastMonthDate.isLastMonth())
        XCTAssertFalse(lastMonthDate.isThisMonth())
        XCTAssertFalse(lastMonthDate.isNextMonth())
    }

}
