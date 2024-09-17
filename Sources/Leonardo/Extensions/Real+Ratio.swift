//
//  Real+Ratio.swift
//  Leonardo
//
//  Created by Nick on 10.09.24.
//

import Numerics

public extension FloatingPoint {

    /// Creates a geometric progression that follows the provided ratio.
    func sequence(upBy ratio: Ratio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 * ratio.value }
    }

    /// Creates a geometric progression that follows the provided ratio.
    func sequence(downBy ratio: Ratio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 / ratio.value }
    }

}

public extension Real where Self: FloatingPoint {

    /// Returns the value formed by applying the provided ratio n times.
    func upscaled(by ratio: Ratio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be upscaled a non-negative number of times")
        return self * .pow(ratio.value, times)
    }

    /// Returns the value formed by applying the provided ratio n times.
    func downscaled(by ratio: Ratio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be downscaled a non-negative number of times")
        return self / .pow(ratio.value, times)
    }

}
