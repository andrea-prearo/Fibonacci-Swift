//
//  FibonacciMemoizedGeneratorTests.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import XCTest
@testable import Fibonacci

class FibonacciMemoizedGeneratorTests: XCTestCase {
    let number = calculatedFibs.count
    
    override func setUp() {
        super.setUp()
    }

    func testGenerator() {
        var fibGen = FibonacciMemoizedGenerator()
        var results = [UInt]()
        for _ in 0..<self.number {
            if let fib = fibGen.next() {
                results.append(fib)
            }
        }
        XCTAssertEqual(results, calculatedFibs)
    }
}
