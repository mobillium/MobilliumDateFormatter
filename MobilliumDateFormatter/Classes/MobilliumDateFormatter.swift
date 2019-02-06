//
//  MobilliumDateFormatter.swift
//  MobilliumDateFormatter
//
//  Created by Mehmet Salih Aslan on 6.02.2019.
//

import Foundation

public class MobilliumDateFormatter {
    
    public static var locale: Locale?
    
}

public extension Date {
    
    enum Format {
        
        /// Format: yyyy-MM-dd
        case date
        
        /// Format: yyyy-MM-dd HH:mm:ss
        case dateTime
        
        /// Format: dd.MM.yyyy
        case readableDate
        
        /// Format: dd.MM.yyyy HH:mm
        case readableDateTime
        
        /// Format: HH:mm
        case readableTime
        
        /// Format: d MMMM yyyy
        case readableDateWithSpace
        
        /// Format: d MMMM yyyy HH:mm
        case readableDateTimeWithSpace
        
        //MARK: Custom
        /// Custom Format
        case custom(rawValue: String)
        
        /// The corresponding `String` value.
        public var rawValue: String {
            switch self {
            case .date:                         return "yyyy-MM-dd"
            case .dateTime:                     return "yyyy-MM-dd HH:mm:ss"
            case .readableDate:                 return "dd.MM.yyyy"
            case .readableTime:                 return "HH:mm"
            case .readableDateTime:             return "dd.MM.yyyy HH:mm"
            case .readableDateWithSpace:        return "d MMMM yyyy"
            case .readableDateTimeWithSpace:    return "d MMMM yyyy HH:mm"
            case .custom(let rawValue):         return rawValue
            }
        }
        
        /// Init custom format
        init(_ rawValue: String) {
            self = .custom(rawValue: rawValue)
        }
        
    }
    
    /// Creates a Date using 'TimeInterval'
    static func from(_ timeInterval: TimeInterval) -> Date? {
        return Date(timeIntervalSince1970: timeInterval)
    }
    
    /// Creates a Date using 'dateString' and 'Date.Format'.
    static func from(_ dateString: String, format: Date.Format) -> Date? {
        let dateformatter = DateFormatter()
        dateformatter.locale = MobilliumDateFormatter.locale
        dateformatter.dateFormat = format.rawValue
        return dateformatter.date(from: dateString)
    }
    
    /// Creates a String using 'Date'.
    func to(_ format: Date.Format) -> String {
        let dateformatter: DateFormatter = DateFormatter()
        dateformatter.locale = MobilliumDateFormatter.locale
        dateformatter.dateFormat = format.rawValue
        return dateformatter.string(from: self)
    }
    
}
