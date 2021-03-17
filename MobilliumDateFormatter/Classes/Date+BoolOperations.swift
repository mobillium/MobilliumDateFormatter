//
//  Date+BoolOperations.swift
//  MobilliumDateFormatter
//
//  Created by Mehmet Salih Aslan on 17.03.2021.
//

public extension Date {
    
    var isNextWeek: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let weekOfYear = calendar.component(.weekOfYear, from: now)
        let nextWeekOfYear = calendar.component(.weekOfYear, from: self)
        return weekOfYear == nextWeekOfYear - 1
    }
    
    var isThisWeek: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let weekOfYear = calendar.component(.weekOfYear, from: now)
        let currenWeekOfYear = calendar.component(.weekOfYear, from: self)
        return weekOfYear == currenWeekOfYear
    }
    
    var isLastWeek: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let weekOfYear = calendar.component(.weekOfYear, from: now)
        let lastWeekOfYear = calendar.component(.weekOfYear, from: self)
        return weekOfYear == lastWeekOfYear + 1
    }

    var isNextMonth: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let monthOfTheYear = calendar.component(.month, from: now)
        let nextMonthOfTheYear = calendar.component(.month, from: self)
        return monthOfTheYear == nextMonthOfTheYear - 1
    }
    
    var isThisMonth: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let monthOfTheYear = calendar.component(.month, from: now)
        let currentMonthOfTheYear = calendar.component(.month, from: self)
        return monthOfTheYear == currentMonthOfTheYear
    }
    
    var isLastMonth: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let monthOfTheYear = calendar.component(.month, from: now)
        let lastMonthOfTheYear = calendar.component(.month, from: self)
        return monthOfTheYear == lastMonthOfTheYear + 1
    }
  
    /// Check if date is within today.
    var isToday: Bool {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.isDateInToday(self)
    }
    
    /// Check if date is within tomorrow.
    var isTomorow: Bool {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.isDateInTomorrow(self)
    }
    
    /// Check if date is within yesterday.
    var isYesterday: Bool {
        let calendar = MobilliumDateFormatter.calendar
        return calendar.isDateInYesterday(self)
    }
    
    var isNextYear: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let year = calendar.component(.year, from: now)
        let nextYear = calendar.component(.year, from: self)
        return year == nextYear - 1
    }
    
    var isThisYear: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let year = calendar.component(.year, from: now)
        let currentYear = calendar.component(.year, from: self)
        return currentYear == year
    }
    
    var isLastYear: Bool {
        let calendar = MobilliumDateFormatter.calendar
        let now = Date()
        let year = calendar.component(.year, from: now)
        let lastYear = calendar.component(.year, from: self)
        return year == lastYear + 1
    }
    
}
