//
//  FloatingPoint+scaling.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

public extension FloatingPoint {

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

import CoreFoundation

public extension CGFloat {

    /// Returns the value formed by applying the provided ratio n times.
    func upscaled(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be upscaled a non-negative number of times")
        return self * pow(ratio.value, CGFloat(times))
    }

    /// Returns the value formed by applying the provided ratio n times.
    func downscaled(by ratio: GeometricRatio<Self>, times: Int = 1) -> Self {
        assert(times >= 0, "\(self) can only be downscaled a non-negative number of times")
        return self * pow(ratio.value, -CGFloat(times))
    }

}
