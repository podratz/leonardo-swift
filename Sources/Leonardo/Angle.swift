//
//  Angle.swift
//
//
//  Created by Nick on 20.08.24.
//

import Numerics

public struct Angle<Radians: Strideable> {
    
    public let radians: Radians
    
    public init(_ radians: Radians) {
        self.radians = radians
    }
        
}

extension Angle: ExpressibleByFloatLiteral where Radians: ExpressibleByFloatLiteral {
    
    public init(floatLiteral radians: Radians.FloatLiteralType) {
        self.radians = Radians(floatLiteral: radians)
    }

}

extension Angle: ExpressibleByIntegerLiteral where Radians: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral radians: Radians.IntegerLiteralType) {
        self.radians = Radians(integerLiteral: radians)
    }
    
}

public extension Angle where Radians: FloatingPoint {
    
    var degrees: Radians {
        radians * (360 / .tau)
    }

    init(degrees: Radians) {
        self.radians = degrees * (.tau / 360)
    }

    /// Returns the sum over n strides of the angle.
    subscript(n: Int) -> Angle {
        .init(Radians(n) * radians)
    }
    
}

public extension Angle where Radians: Real {
    
    typealias ComponentType = Radians
    var complex: Complex<ComponentType> {
        Complex(length: 1, phase: radians)
    }
    
}
