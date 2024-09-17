//
//  GeometricRatio.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

/// The Ratio type embodies the concept of a geometric ratio. It is intended to make UI work based on geometric relationships easier and more intuitive.
/// The type provides many properties and methods that allow for convenient access to many ratios' irrational properties.
/// Several common ratios are provided and made accessible as static computed variables. Try `Ratio.golden` to get started.
public struct GeometricRatio<ValueType: Comparable>: Comparable {

    public let value: ValueType
    public let name: String?

    public init(_ value: ValueType, name: String? = nil) {
        self.value = value
        self.name = name
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.value < rhs.value
    }

}

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

extension GeometricRatio: ExpressibleByFloatLiteral where ValueType: ExpressibleByFloatLiteral {

    public init(floatLiteral value: ValueType.FloatLiteralType) {
        self.value = ValueType(floatLiteral: value)
        self.name = nil
    }

}

extension GeometricRatio: ExpressibleByIntegerLiteral where ValueType: ExpressibleByIntegerLiteral {

    public init(integerLiteral value: ValueType.IntegerLiteralType) {
        self.value = ValueType(integerLiteral: value)
        self.name = nil
    }

}

public extension GeometricRatio where ValueType: FloatingPoint {

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

    /// Returns the n-th application of the ratio onto itself.
    subscript(_ times: Int) -> ValueType {
        applied(times: times)
    }

}

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
