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

// MARK: + Expressible by literal

extension GeometricRatio: ExpressibleByIntegerLiteral where ValueType: ExpressibleByIntegerLiteral {

    public init(integerLiteral value: ValueType.IntegerLiteralType) {
        self.value = ValueType(integerLiteral: value)
        self.name = nil
    }

}

extension GeometricRatio: ExpressibleByFloatLiteral where ValueType: ExpressibleByFloatLiteral {

    public init(floatLiteral value: ValueType.FloatLiteralType) {
        self.value = ValueType(floatLiteral: value)
        self.name = nil
    }

}

// MARK: + String convertible

extension GeometricRatio: CustomStringConvertible {
    public var description: String {
        "\(name ?? "Unnamed") ratio"
    }
}

extension GeometricRatio: CustomDebugStringConvertible {
    public var debugDescription: String {
        "1:\(value) [\(description)]"
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

    /// A sequence of values created by iteratively applying this ratio.
    var values: some Sequence<ValueType> {
        (0...).lazy.map { index in
            applied(to: value, times: index)
        }
    }

}

// MARK: ValueType: Real

public extension GeometricRatio where ValueType: Real {

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> ValueType {
        .pow(value, times)
    }

}

// MARK: ValueType is Double

public extension GeometricRatio where ValueType == Double {

    /// The angle associated with the ratio.
    var angle: Angle {
        .init(radians: .tau * (1 - 1 / value))
    }

    /// The sequence of angles derived from iterative application of this ratio.
    var angles: some Sequence<Angle> {
        (0...).lazy.map { index in
                .init(radians: applied(to: angle.radians, times: index))
        }
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(angle index: Int) -> Angle {
        .init(radians: ValueType(index) * angle.radians)
    }

    /// The phase value derived from interpreting the ratio as an angle.
    var phase: ValueType {
        angle.radians.truncatingRemainder(dividingBy: .tau)
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(phase index: Int) -> Angle {
        .init(radians: self[angle: index].phase)
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(hue index: Int) -> ValueType {
        self[phase: index].hue
    }

}

// MARK: ValueType is CGFloat

public extension GeometricRatio where ValueType == CGFloat {

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> ValueType {
        pow(value, CGFloat(times))
    }

}

// MARK: - requiring SwiftUICore

import SwiftUICore

extension GeometricRatio where ValueType == Double {

    /// Returns the n-th application of the ratio onto itself.
    subscript(color index: Int) -> Color {
        self[phase: index].color
    }

}

public extension GeometricRatio where ValueType: FloatingPoint {
    /// Initializes a `GeometricRatio` with a numerator and a denominator.
    ///
    /// This initializer computes the ratio by dividing the given numerator by the denominator.
    /// The resulting ratio is stored in the `value` property. The ratio is computed as `numerator / denominator`.
    ///
    /// - Parameters:
    ///   - numerator: The numerator (the top number in a fraction), which will be divided by the denominator.
    ///   - denominator: The denominator (the bottom number in a fraction), which the numerator is divided by.
    ///
    /// - Throws: A `GeometricRatioError.invalidDenominator` error if the denominator is zero, since division by zero is undefined.
    ///
    /// - Example:
    ///   ```
    ///   let ratio = try? GeometricRatio(numerator: 10, denominator: 20)
    ///   print(ratio?.value) // Output: 0.5
    ///   ```
    ///
    /// - Note: Ensure that the denominator is not zero to avoid throwing an error.
    init(numerator: ValueType, denominator: ValueType) throws(GeometricRatioError) {
        guard denominator != 0 else { throw .invalidDenominator }
        self.value = numerator / denominator
        self.name = nil
    }
}
