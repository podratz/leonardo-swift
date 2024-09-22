//
//  FloatingPoint+sequence.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

public extension FloatingPoint {

    /// Creates a geometric progression that follows the provided ratio.
    func sequence(upBy ratio: GeometricRatio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 * ratio.value }
    }

    /// Creates a geometric progression that follows the provided ratio.
    func sequence(downBy ratio: GeometricRatio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 / ratio.value }
    }

    /// Computes the geometric neighborhood for the given value with the ratio such that the given value is the center element.
    func neighborhood(ratio: GeometricRatio<Self>, radius: Int = 1) -> Array<Self> {
        let prefix = GeometricRatio<Self>.ValueType(1).sequence(downBy: ratio).prefix(radius + 1).reversed()
        let suffix = GeometricRatio<Self>.ValueType(1).sequence(upBy: ratio).dropFirst().prefix(radius)
        return prefix + suffix
    }

}
