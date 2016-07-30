//
//  Utils.swift
//  Fibonacci
//
//  Created by Prearo, Andrea on 7/29/16.
//  Copyright © 2016 Prearo, Andrea. All rights reserved.
//

import Foundation

public typealias TimedExecutionResult = (time: NSTimeInterval, result: [UInt])

let SecondsMultiplier = NSTimeInterval(1000)

public func formatTimeMsec(time: NSTimeInterval) -> String {
    return String(format: "T = %.3f msec", time)
}

public func timedExecution(process: FibHandler) -> TimedExecutionResult {
    let start = NSDate()
    let result = process()
    let time = NSDate().timeIntervalSinceDate(start) * SecondsMultiplier
    return (time, result)
}
