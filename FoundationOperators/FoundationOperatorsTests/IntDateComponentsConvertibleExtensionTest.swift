//
//  IntDateComponentsConvertibleExtensionTest.swift
//  FoundationOperators
//
//  Created by Robert Bartoszewski on 16/07/14.
//

import FoundationOperators
import XCTest

class IntDateComponentsConvertibleExtensionTest: XCTestCase {

//  years
    
    func testYearsShouldReturnDateComponentsWithYearComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.year = 42
        XCTAssertEqualObjects(42.years, expectedDateComponents)
    }
    
//  months
    
    func testMonthsShouldReturnDateComponentsWithMonthComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.month = 42
        XCTAssertEqualObjects(42.months, expectedDateComponents)
    }
    
//  days
    
    func testDaysShouldReturnDateComponentsWithDayComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.day = 42
        XCTAssertEqualObjects(42.days, expectedDateComponents)
    }
    
//  hours
    
    func testHoursShouldReturnDateComponentsWithHourComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.hour = 42
        XCTAssertEqualObjects(42.hours, expectedDateComponents)
    }
    
//  minutes
    
    func testMinutesShouldReturnDateComponentsWithMinuteComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.minute = 42
        XCTAssertEqualObjects(42.minutes, expectedDateComponents)
    }
    
//  seconds
    
    func testSecondsShouldReturnDateComponentsWithSecondComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.second = 42
        XCTAssertEqualObjects(42.seconds, expectedDateComponents)
    }
    
//  weeksOfYear
    
    func testWeeksOfYearShouldReturnDateComponentsWithWeekOfYearComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.weekOfYear = 42
        XCTAssertEqualObjects(42.weeksOfYear, expectedDateComponents)
    }
    
//  eras
    
    func testErasShouldReturnDateComponentsWithEraComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.era = 42
        XCTAssertEqualObjects(42.eras, expectedDateComponents)
    }
    
//  weekdays
    
    func testWeekdaysShouldReturnDateComponentsWithWeekdayComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.weekday = 42
        XCTAssertEqualObjects(42.weekdays, expectedDateComponents)
    }
    
//  weekdaysOrdinal
    
    func testWeekdaysOrdinalShouldReturnDateComponentsWithWeekdayOrdinalComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.weekdayOrdinal = 42
        XCTAssertEqualObjects(42.weekdaysOrdinal, expectedDateComponents)
    }
    
//  quarters
    
    func testQuartersShouldReturnDateComponentsWithQuarterComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.quarter = 42
        XCTAssertEqualObjects(42.quarters, expectedDateComponents)
    }
    
//  weeksOfMonth
    
    func testWeeksOfMonthShouldReturnDateComponentsWithWeekOfMonthComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.weekOfMonth = 42
        XCTAssertEqualObjects(42.weeksOfMonth, expectedDateComponents)
    }
    
//  nanoseconds
    
    func testNanosecondsShouldReturnDateComponentsWithNanosecondComponentDefined() {
        let expectedDateComponents = NSDateComponents()
        expectedDateComponents.nanosecond = 42
        XCTAssertEqualObjects(42.nanoseconds, expectedDateComponents)
    }

}
