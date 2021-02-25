import XCTest
import MobilliumDateFormatter

extension Date.Format {
    static let dateTime = Date.Format.custom(rawValue: "yyyy-MM-dd HH:mm:ss")
}

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
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
        
        // Check
        XCTAssertNotNil(date)
    }
    
    func testIsNextMonth() {
        // Value
        guard let nextMonthDate = Calendar.current.date(byAdding: .month, value: +1, to: Date()) else { return }
        
        // Check
        XCTAssertTrue(nextMonthDate.isNextMonth())
        XCTAssertFalse(nextMonthDate.isLastMonth())
        XCTAssertFalse(nextMonthDate.isThisMonth())
    }
    
    func testIsThisMonth() {
        // Value
        guard let currentMonthDate = Calendar.current.date(byAdding: .month, value: 0, to: Date()) else { return }
        
        // Check
        XCTAssertTrue(currentMonthDate.isThisMonth())
        XCTAssertFalse(currentMonthDate.isNextMonth())
        XCTAssertFalse(currentMonthDate.isLastMonth())
    }
    
    func testIsLastMonth() {
        // Value
        guard let lastMonthDate = Calendar.current.date(byAdding: .month, value: -1, to: Date()) else { return }
        
        // Check
        XCTAssertTrue(lastMonthDate.isLastMonth())
        XCTAssertFalse(lastMonthDate.isThisMonth())
        XCTAssertFalse(lastMonthDate.isNextMonth())
    }
    
}
