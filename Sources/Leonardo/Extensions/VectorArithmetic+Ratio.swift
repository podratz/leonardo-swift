//
//  VectorArithmetic+Ratio.swift
//  Leonardo
//
//  Created by Nick on 10.09.24.
//

import SwiftUICore

extension VectorArithmetic {
    
    /// Returns a value with each component of this value multiplied by the given ratio.
    public func scaled(by ratio: Ratio<Double>, times: Int = 1) -> Self {
        let scalingFactor: Double = .pow(ratio.value, times)
        return scaled(by: scalingFactor)
    }
    
}
