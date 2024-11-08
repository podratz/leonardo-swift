//
//  Comparable.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio: Comparable where Value: FloatingPoint {
    
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.quotient < rhs.quotient
    }

}
