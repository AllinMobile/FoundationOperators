//
//  Int+DateComponentsConvertible.swift
//  FoundationOperators
//
//  Created by Jan Klausa on 05/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

protocol DateComponentsConvertible {
    var years: NSDateComponents { get }
    var months: NSDateComponents { get }
    var days: NSDateComponents { get }
    var hours: NSDateComponents { get }
    var minutes: NSDateComponents { get }
    var seconds: NSDateComponents { get }
    var weeksOfYear: NSDateComponents { get }
    var eras: NSDateComponents { get }
    var weekdays: NSDateComponents { get }
    var weekdaysOrdinal: NSDateComponents { get }
    var quarters: NSDateComponents { get }
    var weeksOfMonth: NSDateComponents { get }
    var nanoseconds: NSDateComponents { get }
}

extension Int: DateComponentsConvertible {
    
    var years: NSDateComponents {
        let component = NSDateComponents()
        component.year = self
        return component
    }

    var months: NSDateComponents {
        let component = NSDateComponents()
        component.month = self
        return component
    }

    var days: NSDateComponents {
        let component = NSDateComponents()
        component.day = self
        return component
    }

    var hours: NSDateComponents {
        let component = NSDateComponents()
        component.hour = self
        return component
    }

    var minutes: NSDateComponents {
        let component = NSDateComponents()
        component.minute = self
        return component
    }

    var seconds: NSDateComponents {
        let component = NSDateComponents()
        component.second = self
        return component
    }
    
    var weeksOfYear: NSDateComponents {
        let component = NSDateComponents()
        component.weekOfYear = self
        return component
    }
    
    var eras: NSDateComponents {
        let component = NSDateComponents()
        component.era = self
        return component
    }
    
    var weekdays: NSDateComponents {
        let component = NSDateComponents()
        component.weekday = self
        return component
    }
    
    var weekdaysOrdinal: NSDateComponents {
        let component = NSDateComponents()
        component.weekdayOrdinal = self
        return component
    }
    
    var quarters: NSDateComponents {
        let component = NSDateComponents()
        component.quarter = self
        return component
    }
    
    var weeksOfMonth: NSDateComponents {
        let component = NSDateComponents()
        component.weekOfMonth = self
        return component
    }
    
    var nanoseconds: NSDateComponents {
        let component = NSDateComponents()
        component.nanosecond = self
        return component
    }
}