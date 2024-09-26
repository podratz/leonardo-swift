//
//  File.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

public extension FloatingPoint {
    /// Interpolates between the current value (`self`) and the target value (`towards`) based on a given proportion.
    ///
    /// - Parameters:
    ///   - towards: The target value to interpolate towards.
    ///   - proportion: The proportion to use for interpolation (e.g., the golden ratio).
    /// - Returns: The interpolated value.
    func interpolated(towards: Self, proportion: GeometricRatio<Self>) -> Self {
        return self + (towards - self) / proportion.quotient
    }
}
