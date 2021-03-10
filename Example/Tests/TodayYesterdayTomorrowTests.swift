//
//  TodayYesterdayTomorrowTests.swift
//  MobilliumDateFormatter_Tests
//
//  Created by Alihan Aktay on 25.02.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
import MobilliumDateFormatter

class TodayYesterdayTomorrowTests: XCTestCase {
    
    let today = Date()
    let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())
    let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsToday() {
        XCTAssertTrue(today.isToday)
        XCTAssertFalse(tomorrow!.isToday)
        XCTAssertFalse(yesterday!.isToday)
    }
    
    func testIsTomorrow() {
        XCTAssertFalse(today.isTomorow)
        XCTAssertTrue(tomorrow!.isTomorow)
        XCTAssertFalse(yesterday!.isTomorow)
    }
    
    func testIsYesterday() {
        XCTAssertFalse(today.isYesterday)
        XCTAssertFalse(tomorrow!.isYesterday)
        XCTAssertTrue(yesterday!.isYesterday)
    }
}
