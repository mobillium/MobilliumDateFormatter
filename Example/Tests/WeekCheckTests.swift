//
//  WeekCheckTests.swift
//  MobilliumDateFormatter_Tests
//
//  Created by Emirhan Battalbaş on 25.02.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest

class WeekCheckTests: XCTestCase {

    let thisWeek = Date()
    let nextWeek = Calendar.current.date(byAdding: .weekOfYear, value: 1, to: Date())
    let lastWeek = Calendar.current.date(byAdding: .weekOfYear, value: -1, to: Date())
    
    func testThisWeek() {
        XCTAssertFalse(thisWeek.isLastWeek())
        XCTAssertFalse(thisWeek.isNextWeek())
        XCTAssertTrue(thisWeek.isThisWeek())
    }
    
    func testLastWeek() {
        guard let lastWeek = lastWeek else { return }
        XCTAssertTrue(lastWeek.isLastWeek())
        XCTAssertFalse(lastWeek.isNextWeek())
        XCTAssertFalse(lastWeek.isThisWeek())
    }
    
    func testNextWeek() {
        guard let nextWeek = nextWeek else { return }
        XCTAssertFalse(nextWeek.isLastWeek())
        XCTAssertTrue(nextWeek.isNextWeek())
        XCTAssertFalse(nextWeek.isThisWeek())
    }

}
