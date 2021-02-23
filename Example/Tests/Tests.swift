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
    
    func testAddHour() {
        // Value
        let date = Date(timeIntervalSince1970: 1549611277) // 2019-02-08 07:34:37
        let date2 = Date(timeIntervalSince1970: 1549622077) // 2019-02-08 10:34:37
        
        // Create result Date
        let resultDate = date.add(.hour, count: 3)
        
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
    
}
