//
//  Date+MathOperations.swift
//  MobilliumDateFormatter
//
//  Created by Mehmet Salih Aslan on 17.03.2021.
//

public extension Date {
    
    func add(_ component: DateComponentType, count: Int) -> Date? {
        switch component {
        case .millisecond:
            return addMillisecond(count)
        case .second:
            return addSecond(count)
        case .minute:
            return addMinute(count)
        case .hour:
            return addHour(count)
        case .day:
            return addDay(count)
        case .weekOfYear:
            return addWeekOfYear(count)
        case .month:
            return addMonth(count)
        case .year:
            return addYear(count)
        }
    }
    
    func addMillisecond(_ count: Int) -> Date? {
        let millisecond = count / 1000
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .second, value: millisecond, to: self)
    }
    
    func addSecond(_ count: Int) -> Date? {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .second, value: count, to: self)
    }
    
    func addMinute(_ count: Int) -> Date? {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .minute, value: count, to: self)
    }
    
    func addHour(_ count: Int) -> Date? {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .hour, value: count, to: self)
    }
    
    func addDay(_ count: Int) -> Date? {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .day, value: count, to: self)
    }
    
    func addWeekOfYear(_ count: Int) -> Date? {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .weekOfYear, value: count, to: self)
    }
    
    func addMonth(_ count: Int) -> Date? {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .month, value: count, to: self)
    }
    
    func addYear(_ count: Int) -> Date? {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.date(byAdding: .year, value: count, to: self)
    }
    
}
