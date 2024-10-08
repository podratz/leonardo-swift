//
//  FloatingPoint+scaling.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

public extension FloatingPoint {

    /// Returns the value formed by applying the provided ratio n times.
    func scaledUp(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be upscaled a non-negative number of times")
        var result = self
        for _ in 0 ..< times {
            result *= ratio.quotient
        }
        return result
    }

    /// Returns the value formed by applying the provided ratio n times.
    func scaledDown(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be downscaled a non-negative number of times")
        var result = self
        for _ in 0 ..< times {
            result /= ratio.quotient
        }
        return result
    }

}

import CoreFoundation

public extension CGFloat {

    /// Returns the value formed by applying the provided ratio n times.
    func scaledUp(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be upscaled a non-negative number of times")
        return self * pow(ratio.quotient, CGFloat(times))
    }

    /// Returns the value formed by applying the provided ratio n times.
    func scaledDown(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be downscaled a non-negative number of times")
        return self * pow(ratio.quotient, -CGFloat(times))
    }

}
