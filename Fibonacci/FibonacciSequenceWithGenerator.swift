//
//  FibonacciSequenceWithGenerator.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import Foundation

// Fibonacci Sequence with external Generator
public struct FibonacciSequenceWithGenerator : SequenceType {
    
    public func generate() -> FibonacciGenerator {
        return FibonacciGenerator()
    }
}
