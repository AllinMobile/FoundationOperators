//
//  NSDateComponentsOperatorsTest.swift
//  FoundationOperators
//
//  Created by Robert Bartoszewski-Kujawa on 14/07/14.
//

import FoundationOperators
import XCTest

class NSDateComponentsOperatorsTest: XCTestCase {

//  +
    
    func testPlusShouldReturnSumOfComponentsIfAllValuesAreDefined() {
        let componentOne = NSDateComponents()
        componentOne.era = 12
        componentOne.year = 22
        componentOne.month = 32
        componentOne.day = 42
        componentOne.hour = 52
        componentOne.minute = 62
        componentOne.second = 72
        componentOne.weekday = 82
        componentOne.weekdayOrdinal = 92
        componentOne.quarter = 102
        componentOne.weekOfMonth = 112
        componentOne.weekOfYear = 122
        componentOne.yearForWeekOfYear = 132
        componentOne.nanosecond = 142
        componentOne.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        let componentTwo = NSDateComponents()
        componentTwo.era = 17
        componentTwo.year = 27
        componentTwo.month = 37
        componentTwo.day = 47
        componentTwo.hour = 57
        componentTwo.minute = 67
        componentTwo.second = 77
        componentTwo.weekday = 87
        componentTwo.weekdayOrdinal = 97
        componentTwo.quarter = 107
        componentTwo.weekOfMonth = 117
        componentTwo.weekOfYear = 127
        componentTwo.yearForWeekOfYear = 137
        componentTwo.nanosecond = 147
        componentTwo.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        let componentsSum = NSDateComponents()
        componentsSum.era = 29
        componentsSum.year = 49
        componentsSum.month = 69
        componentsSum.day = 89
        componentsSum.hour = 109
        componentsSum.minute = 129
        componentsSum.second = 149
        componentsSum.weekday = 169
        componentsSum.weekdayOrdinal = 189
        componentsSum.quarter = 209
        componentsSum.weekOfMonth = 229
        componentsSum.weekOfYear = 249
        componentsSum.yearForWeekOfYear = 269
        componentsSum.nanosecond = 289
        componentsSum.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        XCTAssertEqualObjects(componentOne + componentTwo, componentsSum)
    }
    
    func testPlusShouldReturnSumOfComponentsIfSomeValuesAreNotDefined() {
        let componentOne = NSDateComponents()
        componentOne.era = 12
        componentOne.year = 22
        
        let componentTwo = NSDateComponents()
        componentTwo.year = 27
        componentTwo.month = 37
        componentTwo.day = 47
        
        let componentsSum = NSDateComponents()
        componentsSum.era = 12
        componentsSum.year = 49
        componentsSum.month = 37
        componentsSum.day = 47
        
        XCTAssertEqualObjects(componentOne + componentTwo, componentsSum)
    }
    
    func testPlusShouldReturnNilIfComponentsAreFromDifferentTimeZones() {
        let componentOne = NSDateComponents()
        componentOne.era = 12
        componentOne.year = 22
        componentOne.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        let componentTwo = NSDateComponents()
        componentTwo.year = 27
        componentTwo.month = 37
        componentTwo.day = 47
        componentTwo.timeZone = NSTimeZone(forSecondsFromGMT: -60*60)
        
        XCTAssertNil(componentOne + componentTwo)
    }
    
//  -
    
    func testMinusShouldReturnDifferenceOfComponentsIfAllValuesAreDefined() {
        let componentOne = NSDateComponents()
        componentOne.era = 40
        componentOne.year = 22
        componentOne.month = 70
        componentOne.day = 102
        componentOne.hour = 164
        componentOne.minute = 62
        componentOne.second = 142
        componentOne.weekday = 12
        componentOne.weekdayOrdinal = 88
        componentOne.quarter = 14
        componentOne.weekOfMonth = 200
        componentOne.weekOfYear = 122
        componentOne.yearForWeekOfYear = 1111
        componentOne.nanosecond = -100
        componentOne.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        let componentTwo = NSDateComponents()
        componentTwo.era = 16
        componentTwo.year = 67
        componentTwo.month = 7
        componentTwo.day = 20
        componentTwo.hour = 57
        componentTwo.minute = 67
        componentTwo.second = 2
        componentTwo.weekday = 1
        componentTwo.weekdayOrdinal = 87
        componentTwo.quarter = 12
        componentTwo.weekOfMonth = 100
        componentTwo.weekOfYear = 110
        componentTwo.yearForWeekOfYear = 1000
        componentTwo.nanosecond = 10
        componentTwo.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        let componentsDifference = NSDateComponents()
        componentsDifference.era = 24
        componentsDifference.year = -45
        componentsDifference.month = 63
        componentsDifference.day = 82
        componentsDifference.hour = 107
        componentsDifference.minute = -5
        componentsDifference.second = 140
        componentsDifference.weekday = 11
        componentsDifference.weekdayOrdinal = 1
        componentsDifference.quarter = 2
        componentsDifference.weekOfMonth = 100
        componentsDifference.weekOfYear = 12
        componentsDifference.yearForWeekOfYear = 111
        componentsDifference.nanosecond = -110
        componentsDifference.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        XCTAssertEqualObjects(componentOne - componentTwo, componentsDifference)
    }
    
    func testMinusShouldReturnDifferenceOfComponentsIfSomeValuesAreNotDefined() {
        let componentOne = NSDateComponents()
        componentOne.era = 12
        componentOne.year = 22
        
        let componentTwo = NSDateComponents()
        componentTwo.year = 1
        componentTwo.month = 37
        componentTwo.day = 47
        
        let componentsDifference = NSDateComponents()
        componentsDifference.era = 12
        componentsDifference.year = 21
        componentsDifference.month = -37
        componentsDifference.day = -47
        
        XCTAssertEqualObjects(componentOne - componentTwo, componentsDifference)
    }
    
    func testMinusShouldReturnNilIfComponentsAreFromDifferentTimeZones() {
        let componentOne = NSDateComponents()
        componentOne.era = 12
        componentOne.year = 22
        componentOne.timeZone = NSTimeZone(forSecondsFromGMT: 60*60)
        
        let componentTwo = NSDateComponents()
        componentTwo.year = 27
        componentTwo.month = 37
        componentTwo.day = 47
        componentTwo.timeZone = NSTimeZone(forSecondsFromGMT: -60*60)
        
        XCTAssertNil(componentOne - componentTwo)
    }
    
}
