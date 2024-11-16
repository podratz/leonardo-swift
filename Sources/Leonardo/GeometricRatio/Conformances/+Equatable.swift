//
//  +Equatable.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio: Equatable where Value: Numeric {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.numerator * rhs.denominator == lhs.denominator * rhs.numerator
    }
    
}
