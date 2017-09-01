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
}
