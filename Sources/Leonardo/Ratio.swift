//
//  Ratio.swift
//
//
//  Created by Nick on 20.08.24.
//

import Numerics

public struct Ratio<ValueType: Comparable>: Comparable {
    
    public let value: ValueType
    public let name: String?
    
    public init(_ value: ValueType, name: String? = nil) {
        self.value = value
        self.name = name
    }
    
    public static func < (lhs: Ratio<ValueType>, rhs: Ratio<ValueType>) -> Bool {
        lhs.value < rhs.value
    }
    
}

extension Ratio: CustomStringConvertible {
    public var description: String {
        "\(name ?? "Unknown") ratio"
    }
}

extension Ratio: CustomDebugStringConvertible {
    public var debugDescription: String {
        "1:\(value)"
    }
}

extension Ratio: ExpressibleByFloatLiteral where ValueType: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: ValueType.FloatLiteralType) {
        self.value = ValueType(floatLiteral: value)
        self.name = nil
    }
    
}

extension Ratio: ExpressibleByIntegerLiteral where ValueType: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: ValueType.IntegerLiteralType) {
        self.value = ValueType(integerLiteral: value)
        self.name = nil
    }

}

public extension Ratio where ValueType: FloatingPoint {
    
    /// The angle associated with the ratio.
    var angle: Angle<ValueType> {
        .init(.tau * (1 - (1 / value)))
    }
    
    /// The phase value derived from interpreting the ratio as an angle.
    var phase: ValueType {
        angle.radians.truncatingRemainder(dividingBy: .tau)
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
    
}

public extension Ratio where ValueType: Real {
    
    /// A sequence of values created by iteratively applying this ratio.
    var values: some Sequence<ValueType> {
        (0...).lazy.map { index in
            applied(to: value, n: index)
        }
    }
    
    /// The sequence of angles derived from iterative application of this ratio.
    var angles: some Sequence<ValueType> {
        (0...).lazy.map { index in
            applied(to: angle.radians, n: index)
        }
    }
    
    /// The number which results from applying the ratio to another number.
    func applied(to number: ValueType, n times: Int = 1) -> ValueType {
        .pow(value, times) * number
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(n: Int) -> Self {
        Ratio(.pow(value, n))
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(angle index: Int) -> Angle<ValueType> {
        Angle(ValueType(index) * angle.radians)
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(phase index: Int) -> Angle<ValueType> {
        self[angle: index].phase
    }

    /// Returns the n-th application of the ratio onto itself.
    subscript(hue index: Int) -> ValueType {
        self[phase: index].hue
    }

}

public extension Real where Self: FloatingPoint {
    
    /// Creates a geometric progression that follows the provided ratio.
    func sequence(upBy ratio: Ratio<Self>) -> some Sequence<Self> {
        Swift.sequence(first: self) { $0 * ratio.value }
    }
    
    /// Returns the value formed by applying the provided ratio n times.
    func applying(ratio: Ratio<Self>, n times: Int = 1) -> Self {
        ratio.applied(to: self, n: times)
    }
    
}
