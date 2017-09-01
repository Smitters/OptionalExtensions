//
//  OptionalExtensions.swift
//  OptionalExtensions
//
//  Created by Dmitry Smetankin on 01.09.17.
//  Copyright © 2017 OptionalExtensions. All rights reserved.
//

import Foundation

public extension Optional {
    
    /**
     *  Require this optional to contain a non-nil value
     *
     *  This method will either return the value that this optional contains, or trigger
     *  a `fatalError` with an error message containing debug information.
     *
     *  - parameter hint: Optionally pass a hint that will get included in any error
     *                    message generated in case nil was found.
     *
     *  - return: The value this optional contains.
     */
    
    public func require(hint hintString: String? = nil,
                        file: StaticString = #file,
                        line: UInt = #line) -> Wrapped {
        guard let unwrapped = self else {
            var message = "Required value was nil in \(file), at line \(line)"
            
            if let hint = hintString {
                message.append(". Debugging hint: \(hint)")
            }
            fatalError(message)
        }
        
        return unwrapped
    }
    
    
    /**
     * Unwraps this optional or return default value
     *
     * This method will either return the value that this Optional contains, or return
     * a default value in case the Optional instance is nil.
     *
     * - parameter defaultVaue: Value that will be returned in case the Optional instance is nil.
     *
     * - returns: Contained value or a default.
     */
    
    public func unwrap(default defaultVaue: Wrapped) -> Wrapped {
        if let unwrapped = self {
            return unwrapped
        } else {
            return defaultVaue
        }
    }
    
    /**
     *
     * Returns true if the `Optional` is nil
     *
     */
    
    public var isNone: Bool {
        return self == nil
    }
    
    /**
     *
     * Returns true if the `Optional` is .some
     *
     */
    
    public var isSome: Bool {
        return self != nil
    }
    
    /**
     *
     * Returns a string representing the given value or empty string in case `Optional` is nil.
     *
     * Get rid of "Optional(...)" and "nil" in string representation of Optional values.
     *
     */
    
    public var stringRepresentation: String {
        if let value = self {
            return String(describing: value)
        } else {
            return String()
        }
    }
}
