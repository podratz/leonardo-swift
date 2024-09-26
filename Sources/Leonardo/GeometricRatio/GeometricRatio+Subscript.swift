//
//  GeometricRatio+Subscript.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: - requiring SwiftUICore

import SwiftUICore

extension GeometricRatio where ValueType == Double {

    /// Returns the n-th application of the ratio onto itself.
    subscript(color index: Int) -> Color {
        self[phase: index].color
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(angle index: Int) -> Angle {
        .init(radians: ValueType(index) * angle.radians)
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(phase index: Int) -> Angle {
        .init(radians: self[angle: index].phase)
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(hue index: Int) -> ValueType {
        self[phase: index].hue
    }

}

// MARK: ValueType is CGFloat

public extension GeometricRatio where ValueType == CGFloat {

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> ValueType {
        pow(quotient, CGFloat(times))
    }

}

// MARK: ValueType: Real

import RealModule

public extension GeometricRatio where ValueType: Real {

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> ValueType {
        .pow(quotient, times)
    }

}
