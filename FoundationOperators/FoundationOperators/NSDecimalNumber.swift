
//  NSDecimalNumber.swift
//  FoundationOperators
//
//  Created by Marcin Krzyzanowski on 15/07/14.
//  Copyright (c) 2014 Witek Przeciechowski. All rights reserved.
//

import Foundation

@infix func + (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberByAdding(right)
}

@infix func + (left: NSDecimalNumber, right: NSNumber) -> NSDecimalNumber {
    var decimalRight:NSDecimalNumber = NSDecimalNumber(double: right.doubleValue);
    return left.decimalNumberByAdding(decimalRight);
}

@infix func + (left: NSNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    var decimalLeft:NSDecimalNumber = NSDecimalNumber(double: left.doubleValue);
    return decimalLeft.decimalNumberByAdding(right);
}

@infix func - (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberBySubtracting(right)
}

@infix func - (left: NSDecimalNumber, right: NSNumber) -> NSDecimalNumber {
    var decimalRight:NSDecimalNumber = NSDecimalNumber(double: right.doubleValue);
    return left.decimalNumberBySubtracting(decimalRight);
}

@infix func - (left: NSNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    var decimalLeft:NSDecimalNumber = NSDecimalNumber(double: left.doubleValue);
    return decimalLeft.decimalNumberBySubtracting(right);
}

@infix func * (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return right.decimalNumberByMultiplyingBy(right)
}

@infix func * (left: NSDecimalNumber, right: NSNumber) -> NSDecimalNumber {
    var decimalRight:NSDecimalNumber = NSDecimalNumber(double: right.doubleValue);
    return left.decimalNumberByMultiplyingBy(decimalRight);
}

@infix func * (left: NSNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    var decimalLeft:NSDecimalNumber = NSDecimalNumber(double: left.doubleValue);
    return decimalLeft.decimalNumberByMultiplyingBy(right);
}

@infix func / (left: NSDecimalNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    return left.decimalNumberByDividingBy(right)
}

@infix func / (left: NSDecimalNumber, right: NSNumber) -> NSDecimalNumber {
    var decimalRight:NSDecimalNumber = NSDecimalNumber(double: right.doubleValue);
    return left.decimalNumberByDividingBy(decimalRight);
}

@infix func / (left: NSNumber, right: NSDecimalNumber) -> NSDecimalNumber {
    var decimalLeft:NSDecimalNumber = NSDecimalNumber(double: left.doubleValue);
    return decimalLeft.decimalNumberByDividingBy(right);
}

@assignment func += (inout left: NSDecimalNumber, right: NSDecimalNumber) {
    left = left + right
}

@assignment func -= (inout left: NSDecimalNumber, right: NSDecimalNumber) {
    left = left - right
}

@assignment func *= (inout left: NSDecimalNumber, right: NSDecimalNumber) {
    left = left * right
}

@assignment func /= (inout left: NSDecimalNumber, right: NSDecimalNumber) {
    left = left / right
}

@prefix @assignment func ++ (inout operand: NSDecimalNumber) -> NSDecimalNumber {
    operand += NSDecimalNumber.one()
    return operand
}

@postfix @assignment func ++ (inout operand: NSDecimalNumber) -> NSDecimalNumber {
    var previousOperand = operand;
    ++operand
    return previousOperand
}

@prefix @assignment func -- (inout operand: NSDecimalNumber) -> NSDecimalNumber {
    operand -= NSDecimalNumber.one()
    return operand
}

@postfix @assignment func -- (inout operand: NSDecimalNumber) -> NSDecimalNumber {
    var previousOperand = operand;
    --operand
    return previousOperand
}