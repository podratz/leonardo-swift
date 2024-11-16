//
//  +Hashable.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 16.11.24.
//

import Numerics

extension GeometricRatio: Hashable where Value: FloatingPoint {
    
    public func hash(into hasher: inout Hasher) {
        numerator.hash(into: &hasher)
        denominator.hash(into: &hasher)
    }
    
}
