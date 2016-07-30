//
//  FibonacciSequenceWithMemoizedGenerator.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 8/1/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import Foundation

// Fibonacci Sequence with external Memoized Generator
public struct FibonacciSequenceWithMemoizedGenerator : SequenceType {
    
    public func generate() -> FibonacciMemoizedGenerator {
        return FibonacciMemoizedGenerator()
    }
}
