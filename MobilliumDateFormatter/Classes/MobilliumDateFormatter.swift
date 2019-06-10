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
        
        /// 2-digit year
        case yy
        
        /// 4-digit year
        case yyyy
        
        /// The numeric month of the year. A single M will use '1' for January.
        case M
        
        /// The numeric month of the year. A double M will use '01' for January.
        case MM
        
        /// The shorthand name of the month
        case MMM
        
        /// Full name of the month
        case MMMM
        
        /// Narrow name of the month
        case MMMMM
        
        /// The day of the month. A single d will use 1 for January 1st.
        case d
        
        /// The day of the month. A double d will use 01 for January 1st.
        case dd
        
        /// The day of week in the month
        case E
        
        /// The full name of the day
        case EEEE
        
        /// The 12-hour hour.
        case h
        
        /// The 12-hour hour padding with a zero if there is only 1 digit
        case hh
        
        /// The 24-hour hour.
        case H
        
        /// The 24-hour hour padding with a zero if there is only 1 digit.
        case HH
        
        /// AM / PM for 12-hour time formats
        case a
        
        /// The minute, with no padding for zeroes.
        case m
        
        /// The minute with zero padding.
        case mm
        
        /// The seconds, with no padding for zeroes.
        case s
        
        /// The seconds with zero padding.
        case ss
        
        //MARK: Custom
        /// Custom Format
        case custom(rawValue: String)
        
        /// The corresponding `String` value.
        public var rawValue: String {
            switch self {
            case .yy:                           return "yy"
            case .yyyy:                         return "yyyy"
            case .M:                            return "M"
            case .MM:                           return "MM"
            case .MMM:                          return "MMM"
            case .MMMM:                         return "MMMM"
            case .MMMMM:                        return "MMMMM"
            case .d:                            return "d"
            case .dd:                           return "dd"
            case .E:                            return "E"
            case .EEEE:                         return "EEEE"
            case .h:                            return "h"
            case .hh:                           return "hh"
            case .H:                            return "H"
            case .HH:                           return "HH"
            case .a:                            return "a"
            case .m:                            return "m"
            case .mm:                           return "mm"
            case .s:                            return "s"
            case .ss:                           return "ss"
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
