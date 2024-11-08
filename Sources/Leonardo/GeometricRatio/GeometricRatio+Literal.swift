//
//  GeometricRatio+Literal.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: + Expressible by literal

extension GeometricRatio: ExpressibleByIntegerLiteral where Value: FloatingPoint & ExpressibleByIntegerLiteral {

    public init(integerLiteral value: Value.IntegerLiteralType) {
        self.init(Value(integerLiteral: value), name: nil)
    }

}

extension GeometricRatio: ExpressibleByFloatLiteral where Value: FloatingPoint & ExpressibleByFloatLiteral {

    public init(floatLiteral value: Value.FloatLiteralType) {
        self.init(Value(floatLiteral: value), name: nil)
    }

}
