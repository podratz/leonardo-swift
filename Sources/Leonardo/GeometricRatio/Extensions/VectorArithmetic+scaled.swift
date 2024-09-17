//
//  VectorArithmetic+scaled.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

import SwiftUICore

extension VectorArithmetic {

    /// Returns a value with each component of this value multiplied by the given ratio.
    public func scaled(by ratio: GeometricRatio<Double>, times: Int = 1) -> Self {
        let scalingFactor: Double = .pow(ratio.value, times)
        return scaled(by: scalingFactor)
    }

}
