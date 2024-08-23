//
//  Ratio.swift
//
//
//  Created by Nick on 20.08.24.
//

import Foundation
import Numerics

public struct Ratio<ValueType: Comparable & ExpressibleByFloatLiteral & ExpressibleByIntegerLiteral>: Comparable, ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {
    public var value: ValueType
    
    public init(_ value: ValueType) {
        self.value = value
    }
    
    public static func < (lhs: Ratio<ValueType>, rhs: Ratio<ValueType>) -> Bool {
        lhs.value < rhs.value
    }
    
    public init(floatLiteral value: ValueType.FloatLiteralType) {
        self.value = ValueType(floatLiteral: value)
    }
    
    public init(integerLiteral value: ValueType.IntegerLiteralType) {
        self.value = ValueType(integerLiteral: value)
    }
}

public extension Ratio where ValueType: FloatingPoint {
    /// The angle associated with the ratio.
    var angle: ValueType {
        .tau * (1 - (1 / value))
    }
}

public extension Ratio where ValueType: FloatingPoint {
    /// The ratio's proportion of some value.
    func proportion(of otherValue: ValueType) -> ValueType {
        otherValue / value
    }
}

public extension Ratio where ValueType: FloatingPoint {
    func mean(_ first: ValueType, _ second: ValueType) -> ValueType {
        let diff = second - first
        let delta = diff / value
        return first + delta
    }
}

public extension Ratio where ValueType: FloatingPoint {
    static var platinum:  Self { .init((0 + sqrt( 4)) / 2) }
    static var gold:      Self { .init((1 + sqrt( 5)) / 2) }
    static var silver:    Self { .init((2 + sqrt( 8)) / 2) }
    static var bronce:    Self { .init((3 + sqrt(13)) / 2) }
    static var copper:    Self { .init((4 + sqrt(20)) / 2) }
    static var nickel:    Self { .init((5 + sqrt(29)) / 2) }
    static var aluminium: Self { .init((6 + sqrt(40)) / 2) }
    static var iron:      Self { .init((7 + sqrt(53)) / 2) }
    static var tin:       Self { .init((8 + sqrt(68)) / 2) }
    static var lead:      Self { .init((9 + sqrt(85)) / 2) }
    
    static var plastic:   Self {
        var x: ValueType = 1.0
        for _ in 0..<1000 {
            let f = x * x * x - x - 1
            x -= f / (3 * x * x - 1)
            if abs(f) < 1e-12 { break }
        }
        return .init(x)
    }
}
