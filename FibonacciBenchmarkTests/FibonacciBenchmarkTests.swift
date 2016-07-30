//
//  FibonacciBenchmarkTests.swift
//  FibonacciBenchmarkTests
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import XCTest
@testable import Fibonacci

class FibonacciBenchmarkTests: XCTestCase {
    let number = calculatedFibs.count
    
    override func setUp() {
        super.setUp()
    }
    
    func testFibonacci() {
        var results = [UInt]()
        let test = timedExecution({
            for n in 0...self.number {
                results.append(fib(UInt(n)))
            }
            return results
        })
        print("Fibonacci: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }
    
    func testMemoizedFibonacci() {
        var results = [UInt]()
        let test = timedExecution({
            for n in 0..<self.number {
                results.append(fibMemoized(UInt(n)))
            }
            return results
        })
        print("Memoized Fibonacci: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }

    func testFibonacciGenerator() {
        var results = [UInt]()
        let test = timedExecution({
            var fibGen = FibonacciGenerator()
            for _ in 0..<self.number {
                if let fib = fibGen.next() {
                    results.append(fib)
                }
            }
            return results
        })
        print("Fibonacci Generator: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }
    
    func testFibonacciMemoizedGenerator() {
        var results = [UInt]()
        let test = timedExecution({
            var fibGen = FibonacciMemoizedGenerator()
            for _ in 0..<self.number {
                if let fib = fibGen.next() {
                    results.append(fib)
                }
            }
            return results
        })
        print("Fibonacci Memoized Generator: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }
    
    func testFibonacciSequenceWithGenerator() {
        var results = [UInt]()
        let test = timedExecution({
            for fib in FibonacciSequenceWithGenerator().prefix(self.number) {
                results.append(fib)
            }
            return results
        })
        print("Fibonacci Sequence with external Generator: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }
    
    func testFibonacciSequenceWithMemoizedGenerator() {
        var results = [UInt]()
        let test = timedExecution({
            for fib in FibonacciSequenceWithMemoizedGenerator().prefix(self.number) {
                results.append(fib)
            }
            return results
        })
        print("Fibonacci Sequence with external Memoized Generator: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }
    
    func testFibonacciSequence() {
        var results = [UInt]()
        let test = timedExecution({
            for fib in FibonacciSequence().prefix(self.number) {
                results.append(fib)
            }
            return results
        })
        print("Fibonacci Sequence: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }
    
    func testFibonacciMemoizedSequence() {
        var results = [UInt]()
        let test = timedExecution({
            for fib in FibonacciMemoizedSequence().prefix(self.number) {
                results.append(fib)
            }
            return results
        })
        print("Fibonacci Memoized Sequence: \(formatTimeMsec(test.time))")
        XCTAssertEqual(results, calculatedFibs)
    }
}
