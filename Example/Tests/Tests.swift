import XCTest
import MobilliumDateFormatter

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStringToStringWithFormatter() {
        // Value
        let dateString = "2001-01-01 01:01:00"
        
        // Create Date
        let date = Date.from(dateString, format: .dateTime)
        
        // Check
        XCTAssertNotNil(date)
        
        // Create Date String with Formatter
        let newDateString = date?.to(.readableDateTimeWithSpace)
        
        // Check
        print(newDateString)
        XCTAssertNotNil(newDateString)
    }
    
}
