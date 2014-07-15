//
//  NSNumberOperatorsTest.swift
//  FoundationOperators
//
//  Created by Marcin Krzyzanowski on 15/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import XCTest
import FoundationOperators

class NSNumberOperatorsTest: XCTestCase {

    let oneNumber:NSNumber = 1
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testAdding() {
        var zeroDecimalNumber: NSDecimalNumber = NSDecimalNumber.zero();
        
        let result1: NSDecimalNumber = oneNumber + zeroDecimalNumber;
        XCTAssertEqualObjects(result1, NSDecimalNumber.one())
        
        let result2: NSDecimalNumber = zeroDecimalNumber + oneNumber;
        XCTAssertEqualObjects(result2, NSDecimalNumber.one())

        var oneDecimalNumber: NSDecimalNumber;
        
        oneDecimalNumber = NSDecimalNumber.one();
        let result3: NSDecimalNumber = ++oneDecimalNumber
        XCTAssertEqualObjects(oneDecimalNumber, NSDecimalNumber.numberWithInteger(2))
        XCTAssertEqualObjects(result3, NSDecimalNumber.numberWithInteger(2))

        oneDecimalNumber = NSDecimalNumber.one();
        let result4: NSDecimalNumber = oneDecimalNumber++
        XCTAssertEqualObjects(oneDecimalNumber, NSDecimalNumber.numberWithInteger(2))
        XCTAssertEqualObjects(result4, NSDecimalNumber.numberWithInteger(1))
    }

    func testSubstracting() {
        let zeroDecimalNumber: NSDecimalNumber = NSDecimalNumber.zero();
        
        let result1: NSDecimalNumber = oneNumber - zeroDecimalNumber;
        XCTAssertEqualObjects(result1, NSDecimalNumber.one())
        
        let result2: NSDecimalNumber = zeroDecimalNumber - oneNumber;
        XCTAssertEqualObjects(result2, NSDecimalNumber.numberWithInteger(-1))

        var oneDecimalNumber: NSDecimalNumber;

        oneDecimalNumber = NSDecimalNumber.one();
        let result3: NSDecimalNumber = --oneDecimalNumber
        XCTAssertEqualObjects(oneDecimalNumber, NSDecimalNumber.numberWithInteger(0))
        XCTAssertEqualObjects(result3, NSDecimalNumber.numberWithInteger(0))
        
        oneDecimalNumber = NSDecimalNumber.one();
        let result4: NSDecimalNumber = oneDecimalNumber--
        XCTAssertEqualObjects(oneDecimalNumber, NSDecimalNumber.numberWithInteger(0))
        XCTAssertEqualObjects(result4, NSDecimalNumber.numberWithInteger(1))
    }
    
    func testMultiplying() {
        let zeroDecimalNumber: NSDecimalNumber = NSDecimalNumber.zero();
        
        let result1: NSDecimalNumber = oneNumber * zeroDecimalNumber;
        XCTAssertEqualObjects(result1, NSDecimalNumber.zero())
        
        let result2: NSDecimalNumber = zeroDecimalNumber * oneNumber;
        XCTAssertEqualObjects(result2, NSDecimalNumber.zero())
    }

    func testDividing() {
        let zeroDecimalNumber: NSDecimalNumber = NSDecimalNumber.zero();
        let oneDecimalNumber: NSDecimalNumber = NSDecimalNumber.one();
        
        let result1: NSDecimalNumber = oneNumber / oneDecimalNumber;
        XCTAssertEqualObjects(result1, NSDecimalNumber.one())
        
        let result2: NSDecimalNumber = oneDecimalNumber / oneNumber;
        XCTAssertEqualObjects(result2, NSDecimalNumber.one())
    }

}
