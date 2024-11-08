//
//  GeometricRatio+Literal.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: + Expressible by literal

extension GeometricRatio: ExpressibleByIntegerLiteral where Value: ExpressibleByIntegerLiteral {

    public init(integerLiteral value: Value.IntegerLiteralType) {
        self.quotient = Value(integerLiteral: value)
        self.name = nil
    }

}

extension GeometricRatio: ExpressibleByFloatLiteral where Value: ExpressibleByFloatLiteral {

    public init(floatLiteral value: Value.FloatLiteralType) {
        self.quotient = Value(floatLiteral: value)
        self.name = nil
    }

}
