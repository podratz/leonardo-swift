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

    /// The ratio's proportion of some value.
    func proportion(of otherValue: ValueType) -> ValueType {
        otherValue / quotient
    }

    /// The weighted mean value between the first and second number provided.
    func mean(_ first: ValueType, _ second: ValueType) -> ValueType {
        let diff = second - first
        let delta = diff / quotient
        return first + delta
    }

}
