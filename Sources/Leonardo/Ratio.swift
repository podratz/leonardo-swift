//
//  Ratio.swift
//
//
//  Created by Nick on 20.08.24.
//

import Numerics

public struct Ratio<ValueType: Comparable>: Comparable {
    
    public let value: ValueType
    
    public init(_ value: ValueType) {
        self.value = value
    }
    
    public static func < (lhs: Ratio<ValueType>, rhs: Ratio<ValueType>) -> Bool {
        lhs.value < rhs.value
    }
    
}

extension Ratio: ExpressibleByFloatLiteral where ValueType: ExpressibleByFloatLiteral {
    
    public init(floatLiteral value: ValueType.FloatLiteralType) {
        self.value = ValueType(floatLiteral: value)
    }
    
}

extension Ratio: ExpressibleByIntegerLiteral where ValueType: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: ValueType.IntegerLiteralType) {
        self.value = ValueType(integerLiteral: value)
    }

}

public extension Ratio where ValueType: FloatingPoint {
    
    /// The angle associated with the ratio.
    var angle: ValueType {
        .tau * (1 - (1 / value))
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
            applied(to: angle, n: index)
        }
    }
    
    /// The number which results from applying the ratio to another number.
    func applied(to number: ValueType, n times: Int = 1) -> ValueType {
        .pow(value, times) * number
    }

}

public extension Real where Self: FloatingPoint {
    
    /// Creates a geometric progression that follows the provided ratio.
    func progression(_ ratio: Ratio<Self>) -> some Sequence<Self> {
        progression(multiplying: ratio.value)
    }
    
    /// Creates a geometric progression by iteratively multiplying the provided ratio.
    func progression(multiplying ratio: Self) -> some Sequence<Self> {
        sequence(first: 1) { previous in
            previous * ratio
        }
    }

    /// Returns the value formed by applying the provided ratio n times.
    func applying(ratio: Ratio<Self>, n times: Int = 1) -> Self {
        ratio.applied(to: self, n: times)
    }
    
}
