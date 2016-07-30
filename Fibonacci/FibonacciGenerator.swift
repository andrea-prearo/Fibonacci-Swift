//
//  FibonacciGenerator.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import Foundation

// Fibonacci Generator
public struct FibonacciGenerator : GeneratorType {
    var last: (UInt, UInt) = (0, 1)
    
    public mutating func next() -> UInt? {
        let next = last.0
        last = (last.1, last.0 + last.1)
        return next
    }
}
