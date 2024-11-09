//
//  GeometricRatio+Subscript.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: ValueType: Real

import RealModule

public extension GeometricRatio where Value == Double {
    
    /// Returns the angle at the given index for this ratio.
    subscript(angle index: Int) -> Angle {
        .init(radians: Double(index) * self.angle.radians)
    }
    
    /// Returns an array of angles at the given indices of the range for this ratio.
    subscript(angles range: ClosedRange<Int>) -> [Angle] {
        range.map { self[angle: $0] }
    }

}

public extension GeometricRatio where Value: Real {

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> Self {
        Self(.pow(quotient, times))
    }
    
    /// Returns an array of ratios at the given indices of the range.
    subscript(_ range: ClosedRange<Int>) -> [Self] {
        range.map { self[$0] }
    }

}

// MARK: ValueType is CGFloat

import SwiftUICore

public extension GeometricRatio where Value == CGFloat {
    
    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> Self {
        Self(pow(quotient, CGFloat(times)))
    }
    
    /// Returns an array of ratios at the given indices of the range.
    subscript(_ range: ClosedRange<Int>) -> [Self] {
        range.map { self[$0] }
    }
    
}
