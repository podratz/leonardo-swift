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

    public let value: ValueType
    public let name: String?

    public init(_ value: ValueType, name: String? = nil) {
        self.value = value
        self.name = name
    }

    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.value == rhs.value
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.value < rhs.value
    }

}

// MARK: ValueType: FloatingPoint

public extension GeometricRatio where ValueType: FloatingPoint {

    /// The reciprocal of the ratio. The invariant (1 / value == reciprocal) holds.
    var reciprocal: ValueType {
        1 / value
    }

    /// The ratio's proportion of some value.
    func proportion(of otherValue: ValueType) -> ValueType {
        otherValue / value
    }

    /// The weighted mean value between the first and second number provided.
    func mean(_ first: ValueType, _ second: ValueType) -> ValueType {
        let diff = second - first
        let delta = diff / value
        return first + delta
    }

    /// Computes the geometric neighborhood of the ratio such that the original ratio is in the center element of the array.
    func neighborhood(radius: Int = 1) -> Array<ValueType> {
        let prefix = ValueType(1).sequence(downBy: self).prefix(radius + 1).reversed()
        let suffix = value.sequence(upBy: self).prefix(radius)
        return prefix + suffix
    }

    /// The number which results from applying the ratio to another number.
    func applied(to number: ValueType = 1, times: Int = 1) -> ValueType {
        assert(times >= 0, "\(self) can only be applied a non-negative number of times")
        var result = number
        for _ in 0 ..< times {
            result *= value
        }
        return result
    }

}
