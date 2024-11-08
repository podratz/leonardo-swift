//
//  +Equatable.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio: Equatable where Value: FloatingPoint {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.quotient == rhs.quotient
    }
    
}
