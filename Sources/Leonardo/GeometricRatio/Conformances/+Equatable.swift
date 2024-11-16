//
//  +Equatable.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio: Equatable where Value: Equatable {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.numerator == rhs.numerator && lhs.denominator == rhs.denominator
    }
    
}
