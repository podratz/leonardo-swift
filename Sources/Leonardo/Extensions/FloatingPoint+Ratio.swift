//
//  Real+Ratio.swift
//  Leonardo
//
//  Created by Nick on 10.09.24.
//

import Numerics

public extension FloatingPoint {

    /// Creates a geometric progression that follows the provided ratio.
    func sequence(upBy ratio: GeometricRatio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 * ratio.value }
    }

    /// Creates a geometric progression that follows the provided ratio.
    func sequence(downBy ratio: GeometricRatio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 / ratio.value }
    }

    /// Returns the value formed by applying the provided ratio n times.
    func upscaled(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be upscaled a non-negative number of times")
        var result = self
        for _ in 0 ..< times {
            result *= ratio.value
        }
        return result
    }

    /// Returns the value formed by applying the provided ratio n times.
    func downscaled(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be downscaled a non-negative number of times")
        var result = self
        for _ in 0 ..< times {
            result /= ratio.value
        }
        return result
    }

}
