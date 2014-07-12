//
//  NSStringOperatorsTest.swift
//  FoundationOperators
//
//  Created by Robert Bartoszewski on 12/07/14.
//

import FoundationOperators
import XCTest

class NSStringOperatorsTest: XCTestCase {

    var testString:NSString = "Hello"
    
    override func setUp() {
        super.setUp()
        testString = "Hello"
    }

    func testAddingStringsShouldConcatenate() {
        XCTAssertEqualObjects(testString + " World!", "Hello World!")
    }
    
    func testAddingStringsWithAssignmentShouldConcatenateAndAssign() {
        testString += " World!"
        XCTAssertEqualObjects(testString, "Hello World!")
    }
    
    func testMultiplyingString() {
        XCTAssertEqualObjects(testString * 3, "HelloHelloHello")
    }
    
    func testMultiplyingStringWithAssignment() {
        testString *= 3
        XCTAssertEqualObjects(testString, "HelloHelloHello")
    }
    
    func testSubtractStringsShouldRemoveAllOccurrencesOfRightStringIfThereAreAny() {
        XCTAssertEqualObjects(testString - "l", "Heo")
    }
    
    func testSubtractStringsShouldDoNothingIfThereAreNoOccurrencesOfRightString() {
        XCTAssertEqualObjects(testString - "w", testString)
    }
    
    func testSubtractStringsWithAssignmentShouldRemoveAllOccurrencesOfRightStringIfThereAreAnyAndAssign() {
        testString -= "l"
        XCTAssertEqualObjects(testString, "Heo")
    }
    
    func testDivideStringShouldReturnArrayOfComponentsDividedByProvidedString() {
        testString = "This is a sentence."
        XCTAssertEqualObjects(testString / " ", ["This", "is", "a", "sentence."])
    }
    
    func testDivideStringShouldReturnArrayWithSourceStringIfThereAreNoOccurrencesOfRightString() {
        XCTAssertEqualObjects(testString / " ", ["Hello"])
    }

}
