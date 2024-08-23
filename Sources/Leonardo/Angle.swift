//
//  Angle.swift
//
//
//  Created by Nick on 20.08.24.
//

import Numerics

public struct Angle<Radians: Real & ExpressibleByFloatLiteral & ExpressibleByIntegerLiteral>: ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {
    public let radians: Radians
    
    public init(_ radians: Radians) {
        self.radians = radians
    }
    
    public init(floatLiteral radians: Radians.FloatLiteralType) {
        self.radians = Radians(floatLiteral: radians)
    }
    
    public init(integerLiteral radians: Radians.IntegerLiteralType) {
        self.radians = Radians(integerLiteral: radians)
    }
}

public extension Angle {
    var degrees: Radians {
        radians * (360 / .tau)
    }

    init(degrees: Radians) {
        self.radians = degrees * (.tau / 360)
    }
}

public extension Angle {
    typealias ComponentType = Radians
    var complex: Complex<ComponentType> {
        Complex(length: 1, phase: radians)
    }
}
