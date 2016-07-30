//
//  Math.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import Foundation

public typealias FibHandler = () -> [UInt]

typealias FibCache = (first: UInt, second: UInt)

public func fib(n: UInt) -> (UInt) {
    if n <= 1 {
        return n
    } else {
        return fib(n - 1) + fib(n - 2)
    }
}

public func fibMemoized(n: UInt) -> (UInt) {
    var cache: [UInt: UInt] = [:]
    return _fibMemoized(n: n, cache: &cache)
}

private func _fibMemoized(n n: UInt, inout cache: [UInt: UInt]) -> (UInt) {
    if n <= 1 {
        return n
    } else {
        if let cache = cache[n] {
            return cache
        } else {
            cache[n] = _fibMemoized(n: n - 1, cache: &cache) + _fibMemoized(n: n - 2, cache: &cache)
            return cache[n]!
        }
    }
}
