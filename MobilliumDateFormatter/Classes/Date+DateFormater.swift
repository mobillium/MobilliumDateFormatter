//
//  Date+DateFormater.swift
//  MobilliumDateFormatter
//
//  Created by Mehmet Salih Aslan on 17.03.2021.
//

public extension Date {
    
    /// Creates a Date using 'TimeInterval'
    static func from(_ timeInterval: TimeInterval) -> Date? {
        let date = Date(timeIntervalSince1970: timeInterval)
        return date
    }
    
    /// Creates a Date using 'dateString' and 'Date.Format'.
    static func from(_ dateString: String, format: Date.Format) -> Date? {
        let dateformatter = DateFormatter()
        dateformatter.calendar = MobilliumDateFormatter.calendar
        dateformatter.locale = MobilliumDateFormatter.locale
        dateformatter.dateFormat = format.rawValue
        return dateformatter.date(from: dateString)
    }
    
    /// Creates a String using 'Date'.
    func to(_ format: Date.Format) -> String {
        let dateformatter: DateFormatter = DateFormatter()
        dateformatter.calendar = MobilliumDateFormatter.calendar
        dateformatter.locale = MobilliumDateFormatter.locale
        dateformatter.dateFormat = format.rawValue
        return dateformatter.string(from: self)
    }
    
}
