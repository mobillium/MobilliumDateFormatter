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
        let dateFalse = customDate(year: 1995, month: 12, day: 12)
        let dateTrue = customDate(year: 2022, month: 12, day: 12)

        // Check
        XCTAssertTrue(dateTrue.isNextYear())
        XCTAssertFalse(dateFalse.isNextYear())
    }
    
    func testIsThisYear() {
        // Value
        let dateFalse = customDate(year: 1995, month: 12, day: 12)
        let dateTrue = customDate(year: 2021, month: 12, day: 12)

        // Check
        XCTAssertTrue(dateTrue.isThisYear())
        XCTAssertFalse(dateFalse.isThisYear())
    }
    
    func testIsLastYear() {
        // Value
        let dateFalse = customDate(year: 1995, month: 12, day: 12)
        let dateTrue = customDate(year: 2020, month: 12, day: 12)

        // Check
        XCTAssertTrue(dateTrue.isLastYear())
        XCTAssertFalse(dateFalse.isLastYear())
    }
}

//MARK: Helper
extension Tests {
    func customDate(year: Int, month: Int, day: Int) -> Date {
        let gregorianCalendar = NSCalendar(calendarIdentifier: .gregorian)!

        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day

        let date = gregorianCalendar.date(from: dateComponents)!
        return date
    }
}
