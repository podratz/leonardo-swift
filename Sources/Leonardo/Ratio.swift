//
//  Ratio.swift
//
//
//  Created by Nick on 20.08.24.
//

import Foundation
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

extension Ratio where ValueType: Real {
    
    /// A sequence of values created by iteratively applying this ratio.
    var values: some Sequence<ValueType> {
        (1...).lazy.map { index in
            applied(to: value, n: index)
        }
    }
    
    /// The sequence of angles derived from iterative application of this ratio.
    var angles: some Sequence<ValueType> {
        (1...).lazy.map { index in
            applied(to: angle, n: index)
        }
    }
    
    /// The number which results from applying the ratio to another number.
    func applied(to number: ValueType, n times: Int = 1) -> ValueType {
        ValueType.pow(value, times) * number
    }
    
}

extension Real {
    
    /// Returns the value formed by applying the provided ratio n times.
    func applying(ratio: Ratio<Self>, n times: Int = 1) -> Self {
        ratio.applied(to: self, n: times)
    }
    
}
