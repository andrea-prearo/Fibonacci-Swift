//
//  FibonacciMemoizedSequence.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import Foundation

// Memoized Fibonacci Sequence
public struct FibonacciMemoizedSequence : SequenceType {
    
    public func generate() -> AnyGenerator<UInt> {
        var cache = [UInt: FibCache]()
        var last: (UInt, UInt) = (0, 1)
        var iter: UInt = 0
        
        return AnyGenerator<UInt> {
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
}
