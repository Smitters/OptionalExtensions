//
//  OptionalExtensionsTests.swift
//  OptionalExtensions
//
//  Created by Dmitry Smetankin on 01.09.17.
//  Copyright © 2017 OptionalExtensions. All rights reserved.
//

import Foundation
import XCTest
import OptionalExtensions

class OptionalExtensionsTests: XCTestCase {
    
    func teste_requireWhenInvokedOnNonNilValue_thenReturnsUnwrapedValue() {
        let notNilValue: Int? = 42
        XCTAssertEqual(notNilValue.require(), 42)
    }
    
    func test_unwrap_whenInvokedOnNonNilValue_thenRetursOriginalValue() {
        let notNilValue: Int? = 42
        XCTAssertEqual(notNilValue.unwrap(default: 0), 42)
    }
    
    func test_unwrap_whenInvokedOnNilValue_thenReturnsDefaultValue() {
        let nilValue: Int? = nil
        XCTAssertEqual(nilValue.unwrap(default: 2017), 2017)
    }
    
    func test_isNone_whenInvokedOnNilValue_thenRetursTrue() {
        let nilValue: Int? = nil
        XCTAssertTrue(nilValue.isNone)
    }
    
    func test_isNone_whenInvokedOnNonNilValue_thenRetursFalse() {
        let notNilValue: Int? = 42
        XCTAssertFalse(notNilValue.isNone)
    }
    
    func test_isSome_whenInvokedOnNonNilValue_thenRetursTrue() {
        let notNilValue: Int? = 42
        XCTAssertTrue(notNilValue.isSome)
    }
    
    func test_isSome_whenInvokedOnNilValue_thenRetursFalse() {
        let nilValue: Int? = nil
        XCTAssertFalse(nilValue.isSome)
    }
    
    func test_stringRepresentation_whenInvokedOnNonNilValue_thenReturnsRepresentingString() {
        let currentYear: Int? = 2017
        XCTAssertEqual(currentYear.stringRepresentation, "2017")
    }
    
    func test_stringRepresentation_whenInvokedOnNilValue_thenReturnsEmptyString() {
        let currentYear: Int? = nil
        XCTAssertEqual(currentYear.stringRepresentation, "")
    }
    
    func test_OptionalMoreOpearators() {
        let x: Int? = 43
        let y: Int? = 5
        let z: Int? = nil
        
        XCTAssertTrue(x >? y)
        XCTAssertTrue(x >? z)
        XCTAssertTrue(x >=? 43)
        XCTAssertTrue(x >=? y)
        XCTAssertTrue(x >=? z)
        
        XCTAssertFalse(y >? x)
        XCTAssertFalse(z >? x)
        XCTAssertFalse(y >=? x)
        XCTAssertFalse(z >=? x)
    }
    
    func test_OptionalLessOpearators() {
        let x: Int? = 43
        let y: Int? = 5
        let z: Int? = nil
        
        XCTAssertTrue(y <? x)
        XCTAssertTrue(z <? x)
        XCTAssertTrue(x <=? 43)
        XCTAssertTrue(y <=? x)
        XCTAssertTrue(z <=? x)
        
        XCTAssertFalse(x <? y)
        XCTAssertFalse(x <? z)
        XCTAssertFalse(x <=? y)
        XCTAssertFalse(x <=? z)
    }
}
