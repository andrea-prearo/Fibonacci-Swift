//
//  MathTests.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import XCTest
@testable import Fibonacci

class MathTests: XCTestCase {
    let number = UInt(calculatedFibs.count) - 1
    
    func testFib() {
        var results = [UInt]()
        for n in 0...number {
            results.append(fib(n))
        }
        XCTAssertEqual(results, calculatedFibs)
    }

    func testMemoizedFib() {
        var results = [UInt]()
        for n in 0...number {
            results.append(fibMemoized(n))
        }
        XCTAssertEqual(results, calculatedFibs)
    }
}
