//
//  FibonacciMemoizedFiniteSequenceTests.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import XCTest
@testable import Fibonacci

class FibonacciMemoizedSequenceTests: XCTestCase {
    let number = calculatedFibs.count
    
    override func setUp() {
        super.setUp()
    }
    
    func testSequence() {
        var results = [UInt]()
        for fib in FibonacciMemoizedSequence().prefix(number) {
            results.append(fib)
        }
        XCTAssertEqual(results, calculatedFibs)
    }
    
    func testLazyEven() {
        var results = [UInt]()
        let evenFibs = FibonacciMemoizedSequence().lazy.filter({$0 % 2 == 0})
        for fib in evenFibs.prefix(evenCalculatedFibs.count) {
            results.append(fib)
        }
        XCTAssertEqual(results, evenCalculatedFibs)
    }
}
