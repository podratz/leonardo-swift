//
//  FloatingPoint+sequence.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

public extension FloatingPoint {

    /// Creates a geometric progression that follows the provided ratio.
    func up(by ratio: GeometricRatio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 * ratio.quotient }
    }

    /// Creates a geometric progression that follows the provided ratio.
    func down(by ratio: GeometricRatio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 / ratio.quotient }
    }

    /// Computes the geometric neighborhood for the given value with the ratio such that the given value is the center element.
    func neighborhood(ratio: GeometricRatio<Self>, radius: Int = 1) -> Array<Self> {
        let prefix = Self(1).down(by: ratio).prefix(radius + 1).reversed()
        let suffix = Self(1).up(by: ratio).dropFirst().prefix(radius)
        return prefix + suffix
    }

}
