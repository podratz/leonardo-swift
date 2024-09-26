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
public struct GeometricRatio<ValueType: Comparable>: Equatable, Comparable {
    public typealias ValueType = ValueType

    public let quotient: ValueType
    public let name: String?

    public init(_ quotient: ValueType, name: String? = nil) {
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

public extension GeometricRatio where ValueType: FloatingPoint {

    /// The reciprocal of the ratio. The invariant (1 / quotient == reciprocal) holds.
    var reciprocal: ValueType {
        1 / quotient
    }

    /// The proportion between one value (default 0) and a second.
    func proportion(_ from: ValueType = 0, to: ValueType) -> ValueType {
        let length = to - from
        let part = length / quotient
        return from + part
    }

}
