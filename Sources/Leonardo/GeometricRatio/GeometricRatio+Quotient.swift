//
//  GeometricRatio+Quotient.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

// MARK: - GeometricRatio + Quotient

public extension GeometricRatio where Value: FloatingPoint {
    
    /// The quotient of the ratio. The invariant (quotient == numerator / denominator) holds.
    var quotient: Value {
        numerator / denominator
    }

    /// The reciprocal of the ratio. The invariant (1 / quotient == reciprocal) holds.
    var reciprocal: Value {
        1 / quotient
    }

    init(_ quotient: Value, name: String? = nil) {
        self.numerator = quotient
        self.denominator = 1
        self.name = name
    }

}
