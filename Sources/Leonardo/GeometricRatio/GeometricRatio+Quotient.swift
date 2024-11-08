//
//  GeometricRatio+Quotient.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

// MARK: - GeometricRatio + Quotient

public extension GeometricRatio {
    
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
        self.denominator = Value(1)
        self.name = name
    }

}

// MARK: - GeometricRatio: Equatable

extension GeometricRatio: Equatable {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.quotient == rhs.quotient
    }
    
}

// MARK: - GeometricRatio: Comparable

extension GeometricRatio: Comparable {
    
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.quotient < rhs.quotient
    }

}
