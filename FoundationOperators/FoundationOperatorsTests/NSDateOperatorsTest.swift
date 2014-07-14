//
//  NSDateOperatorsTest.swift
//  FoundationOperators
//
//  Created by Robert Bartoszewski on 13/07/14.
//

import XCTest
import FoundationOperators

class NSDateOperatorsTest: XCTestCase {

    var dateFormatter = NSDateFormatter()
    
    override func setUp() {
        super.setUp()
        dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
    }
    
//  ==
    
    func testEqualsShouldReturnYesForTheSameDate() {
        let date = NSDate()
        XCTAssert(date == date)
    }
    
    func testEqualsShouldReturnYesForDatesWithTheSameTime() {
        let firstDate = date("29.06.2014 12:50")
        let secondDate = date("29.06.2014 12:50")
        XCTAssert(firstDate == secondDate)
    }
    
    func testEqualsShouldReturnNoForTimeBefore() {
        XCTAssertFalse(baseDate() == dateBeforeBaseDate())
    }
    
    func testEqualsShouldReturnNoForTimeAfter() {
        XCTAssertFalse(baseDate() == dateAfterBaseDate())
    }
    
//  <=
    
    func testLessOrEqualsShouldReturnYesForTimeAfter() {
        XCTAssert(baseDate() <= dateAfterBaseDate())
    }
    
    func testLessOrEqualsShouldReturnYesForDatesWithTheSameTime() {
        XCTAssert(baseDate() <= baseDate())
    }
    
    func testLessOrEqualsShouldReturnNoForTimeBefore() {
        XCTAssertFalse(baseDate() <= dateBeforeBaseDate())
    }
    
//  >=
    
    func testGreaterOrEqualsShouldReturnYesForTimeBefore() {
        XCTAssert(baseDate() >= dateBeforeBaseDate())
    }
    
    func testGreaterOrEqualsShouldReturnYesForDatesWithTheSameTime() {
        XCTAssert(baseDate() >= baseDate())
    }
    
    func testGreaterOrEqualsShouldReturnNoForTimeAfter() {
        XCTAssertFalse(baseDate() >= dateAfterBaseDate())
    }
    
//  >
    
    func testGreaterThanShouldReturnYesForTimeBefore() {
        XCTAssert(baseDate() > dateBeforeBaseDate())
    }
    
    func testGreaterThanShouldReturnNoForDatesWithTheSameTime() {
        XCTAssertFalse(baseDate() > baseDate())
    }
    
    func testGreaterThanShouldReturnNoForTimeAfter() {
        XCTAssertFalse(baseDate() > dateAfterBaseDate())
    }
    
//  <
    
    func testLessThanShouldReturnYesForTimeAfter() {
        XCTAssert(baseDate() < dateAfterBaseDate())
    }
    
    func testLessThanShouldReturnNoForDatesWithTheSameTime() {
        XCTAssertFalse(baseDate() < baseDate())
    }
    
    func testLessThanShouldReturnNoForTimeBefore() {
        XCTAssertFalse(baseDate() < dateBeforeBaseDate())
    }
    
//  -
    
    func testMinusTimeIntervalShouldReturnDifferenceBetweenDatesAsTimeInterval() {
        let difference:NSTimeInterval = 42
        let date = NSDate(timeIntervalSince1970: baseDate().timeIntervalSince1970 + difference)
        XCTAssertEqual(date - baseDate(), difference)
    }
    
    func testMinusDateComponentsShouldReturnDateBySubtractingComponentValues() {
        let dateComponents = NSDateComponents()
        dateComponents.day = 2
        dateComponents.hour = 3
        let expectedDate = date("26.06.2014 09:50")
        XCTAssertEqualObjects(baseDate() - dateComponents, expectedDate)
    }
    
//  +
    
    func testPlusDateComponentsShouldReturnDateByAddingComponentValues() {
        let dateComponents = NSDateComponents()
        dateComponents.day = 2
        dateComponents.hour = 3
        let expectedDate = date("30.06.2014 15:50")
        XCTAssertEqualObjects(baseDate() + dateComponents, expectedDate)
    }
    
    func baseDate() -> NSDate {
        return date("28.06.2014 12:50")
    }
    
    func dateAfterBaseDate() -> NSDate {
        return NSDate(timeIntervalSince1970: baseDate().timeIntervalSince1970 + 1)
    }
    
    func dateBeforeBaseDate() -> NSDate {
        return NSDate(timeIntervalSince1970: baseDate().timeIntervalSince1970 - 1)
    }
    
    func date(string: NSString) -> NSDate {
        return dateFormatter.dateFromString(string)
    }

}
