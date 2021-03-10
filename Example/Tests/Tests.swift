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
    
    func testAddSecond() {
        // Value
        let date = Date(timeIntervalSince1970: 1614778571) // 2021-03-03 13:36:11
        let date2 = Date(timeIntervalSince1970: 1614778576) // 2021-03-03 13:36:16
        
        // Create result Date
        let resultDate = date.add(.second, count: 5)

         // Check
         XCTAssertEqual(date2, resultDate)
    }
    
    func testAddMillisecond() {
        // Value
        let date = Date(timeIntervalSince1970: 1614778571) // 2021-03-03 13:36:11
        let date2 = Date(timeIntervalSince1970: 1614778576) // 2021-03-03 13:36:16
        
        // Create result Date
        let resultDate = date.add(.milisecond, count: 5000)

         // Check
         XCTAssertEqual(date2, resultDate)
    }
    
}
