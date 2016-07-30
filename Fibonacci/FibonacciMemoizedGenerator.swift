//
//  FibonacciMemoizedGenerator.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 8/1/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import Foundation

// Memoized Fibonacci Generator
public struct FibonacciMemoizedGenerator : GeneratorType {
    var cache = [UInt: FibCache]()
    var last: (UInt, UInt) = (0, 1)
    var iter: UInt = 0
    
    public mutating func next() -> UInt? {
        iter += 1
        
        if let cache = cache[iter] {
            return cache.first
        } else {
            let next = last.0
            last = (last.1, last.0 + last.1)
            cache[iter] = last
            return next
        }
    }
}
