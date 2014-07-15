//
//  NSDateComponents.swift
//  FoundationOperators
//
//  Created by Jan Klausa on 05/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func +(lhs: NSDateComponents, rhs: NSDateComponents) -> NSDateComponents! {

    func zeroIfNSUndefinedDateComponent(component: Int) -> Int {
        if (component == NSUndefinedDateComponent) {
            return 0
        }
        return component
    }
    
    func sumOfComponentsOrUndefinedValue(componentOne: Int, componentTwo: Int) -> Int {
        if(componentOne == NSUndefinedDateComponent && componentTwo == NSUndefinedDateComponent) {
            return NSUndefinedDateComponent
        }
        return zeroIfNSUndefinedDateComponent(componentOne) + zeroIfNSUndefinedDateComponent(componentTwo)
    }

    if (lhs.timeZone != rhs.timeZone) {
        return nil
    }

    let component = NSDateComponents()
    component.weekOfYear = sumOfComponentsOrUndefinedValue(lhs.weekOfYear, rhs.weekOfYear)
    component.era = sumOfComponentsOrUndefinedValue(lhs.era, rhs.era)
    component.year = sumOfComponentsOrUndefinedValue(lhs.year, rhs.year)
    component.month = sumOfComponentsOrUndefinedValue(lhs.month, rhs.month)
    component.day = sumOfComponentsOrUndefinedValue(lhs.day, rhs.day)
    component.hour = sumOfComponentsOrUndefinedValue(lhs.hour, rhs.hour)
    component.minute = sumOfComponentsOrUndefinedValue(lhs.minute, rhs.minute)
    component.second = sumOfComponentsOrUndefinedValue(lhs.second, rhs.second)
    component.weekday = sumOfComponentsOrUndefinedValue(lhs.weekday, rhs.weekday)
    component.weekdayOrdinal = sumOfComponentsOrUndefinedValue(lhs.weekdayOrdinal, rhs.weekdayOrdinal)
    component.quarter = sumOfComponentsOrUndefinedValue(lhs.quarter, rhs.quarter)
    component.weekOfMonth = sumOfComponentsOrUndefinedValue(lhs.weekOfMonth, rhs.weekOfMonth)
    component.yearForWeekOfYear = sumOfComponentsOrUndefinedValue(lhs.yearForWeekOfYear, rhs.yearForWeekOfYear)
    component.timeZone = lhs.timeZone

    return component
}

@infix func -(lhs: NSDateComponents, rhs: NSDateComponents) -> NSDateComponents! {

    func zeroIfNSUndefinedDateComponent(component: Int) -> Int {
        if (component == NSUndefinedDateComponent) {
            return 0
        }
        return component
    }
    
    func differenceOfComponentsOrUndefinedValue(componentOne: Int, componentTwo: Int) -> Int {
        if(componentOne == NSUndefinedDateComponent && componentTwo == NSUndefinedDateComponent) {
            return NSUndefinedDateComponent
        }
        return zeroIfNSUndefinedDateComponent(componentOne) - zeroIfNSUndefinedDateComponent(componentTwo)
    }

    if (lhs.timeZone != rhs.timeZone) {
        return nil
    }

    let component = NSDateComponents()
    component.weekOfYear = differenceOfComponentsOrUndefinedValue(lhs.weekOfYear, rhs.weekOfYear)
    component.era = differenceOfComponentsOrUndefinedValue(lhs.era, rhs.era)
    component.year = differenceOfComponentsOrUndefinedValue(lhs.year, rhs.year)
    component.month = differenceOfComponentsOrUndefinedValue(lhs.month, rhs.month)
    component.day = differenceOfComponentsOrUndefinedValue(lhs.day, rhs.day)
    component.hour = differenceOfComponentsOrUndefinedValue(lhs.hour, rhs.hour)
    component.minute = differenceOfComponentsOrUndefinedValue(lhs.minute, rhs.minute)
    component.second = differenceOfComponentsOrUndefinedValue(lhs.second, rhs.second)
    component.weekday = differenceOfComponentsOrUndefinedValue(lhs.weekday, rhs.weekday)
    component.weekdayOrdinal = differenceOfComponentsOrUndefinedValue(lhs.weekdayOrdinal, rhs.weekdayOrdinal)
    component.quarter = differenceOfComponentsOrUndefinedValue(lhs.quarter, rhs.quarter)
    component.weekOfMonth = differenceOfComponentsOrUndefinedValue(lhs.weekOfMonth, rhs.weekOfMonth)
    component.yearForWeekOfYear = differenceOfComponentsOrUndefinedValue(lhs.yearForWeekOfYear, rhs.yearForWeekOfYear)
    component.timeZone = lhs.timeZone

    return component
}