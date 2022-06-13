//
//  Date+DateFormater.swift
//  MobilliumDateFormatter
//
//  Created by Mehmet Salih Aslan on 17.03.2021.
//

import Foundation

public extension Date {
    
    /// Creates a Date using 'TimeInterval'
    static func from(_ timeInterval: TimeInterval) -> Date? {
        let date = Date(timeIntervalSince1970: timeInterval)
        return date
    }
    
    /// Creates a Date using 'dateString' and 'Date.Format'.
    static func from(_ dateString: String, format: Date.Format, timeZone: TimeZone? = nil) -> Date? {
        let dateformatter = DateFormatter()
        dateformatter.calendar = MobilliumDateFormatter.calendar
        dateformatter.locale = MobilliumDateFormatter.locale
        if let timeZone = timeZone {
            dateformatter.timeZone = timeZone
        }
        dateformatter.dateFormat = format.rawValue
        return dateformatter.date(from: dateString)
    }
    
    /// Creates a String using 'Date'.
    func to(_ format: Date.Format, timeZone: TimeZone? = nil) -> String {
        let dateformatter: DateFormatter = DateFormatter()
        dateformatter.calendar = MobilliumDateFormatter.calendar
        dateformatter.locale = MobilliumDateFormatter.locale
        if let timeZone = timeZone {
            dateformatter.timeZone = timeZone
        }
        dateformatter.dateFormat = format.rawValue
        return dateformatter.string(from: self)
    }
    
}
