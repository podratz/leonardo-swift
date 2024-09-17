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

}
