//
//  GeometricRatio+Subscript.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: ValueType: Real

import RealModule

public extension GeometricRatio where Value: Real {

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> Self {
        Self(.pow(quotient, times))
    }

}

// MARK: ValueType is CGFloat

import SwiftUICore

public extension GeometricRatio where Value == CGFloat {

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> Self {
        Self(pow(quotient, CGFloat(times)))
    }

}

