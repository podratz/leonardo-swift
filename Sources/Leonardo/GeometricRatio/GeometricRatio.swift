//
//  GeometricRatio.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

import RealModule

// MARK: - Geometric Ratio

/// The Ratio type embodies the concept of a geometric ratio. It is intended to make UI work based on geometric relationships easier and more intuitive.
/// The type provides many properties and methods that allow for convenient access to many ratios' irrational properties.
/// Several common ratios are provided and made accessible as static computed variables. Try `Ratio.golden` to get started.
public struct GeometricRatio<Value: Comparable>: Equatable, Comparable {
    public typealias Value = Value

    public let quotient: Value
    public let name: String?

    public init(_ quotient: Value, name: String? = nil) {
        self.quotient = quotient
        self.name = name
    }

    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.quotient == rhs.quotient
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.quotient < rhs.quotient
    }

}

// MARK: ValueType: FloatingPoint

public extension GeometricRatio where Value: FloatingPoint {

    /// The reciprocal of the ratio. The invariant (1 / quotient == reciprocal) holds.
    var reciprocal: Value {
        1 / quotient
    }

    /// The proportion between one value (default 0) and a second.
    func proportion(_ from: Value = 0, to: Value) -> Value {
         from + (to - from) / quotient
    }

}
