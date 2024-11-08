//
//  +Binary.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio: AdditiveArithmetic where Value: FloatingPoint {
    
    public static func - (lhs: Self, rhs: Self) -> Self {
        Self(lhs.quotient / rhs.quotient)
    }
    
    public static func + (lhs: Self, rhs: Self) -> Self {
        Self(lhs.quotient * rhs.quotient)
    }
    
    public static var zero: Self {
        Self(1)
    }

}
