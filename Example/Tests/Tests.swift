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
    
    func testIsNextYear() {
        // Value
        let date = Date()
        let dateFalse = Calendar.current.date(byAdding: .year, value: -2, to: date)
        let dateTrue = Calendar.current.date(byAdding: .year, value: 1, to: date)

        // Check
        XCTAssertTrue((dateTrue?.isNextYear()) ?? false)
        XCTAssertFalse((dateFalse?.isNextYear()) ?? true)
    }
    
    func testIsThisYear() {
        // Value
        let date = Date()
        let dateFalse = Calendar.current.date(byAdding: .year, value: -2, to: date)
        let dateTrue = Calendar.current.date(byAdding: .year, value: 0, to: date)
        
        // Check
        XCTAssertTrue((dateTrue?.isThisYear()) ?? false)
        XCTAssertFalse((dateFalse?.isThisYear()) ?? true)
    }
    
    func testIsLastYear() {
        // Value
        let date = Date()
        let dateFalse = Calendar.current.date(byAdding: .year, value: -2, to: date)
        let dateTrue = Calendar.current.date(byAdding: .year, value: -1, to: date)
            

        // Check
        XCTAssertTrue((dateTrue?.isLastYear()) ?? false)
        XCTAssertFalse((dateFalse?.isLastYear())  ?? true)
    }
}
