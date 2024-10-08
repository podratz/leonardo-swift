//
//  GeometricRatio+Literal.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: + Expressible by literal

extension GeometricRatio: ExpressibleByIntegerLiteral where ValueType: ExpressibleByIntegerLiteral {

    public init(integerLiteral value: ValueType.IntegerLiteralType) {
        self.quotient = ValueType(integerLiteral: value)
        self.name = nil
    }

}

extension GeometricRatio: ExpressibleByFloatLiteral where ValueType: ExpressibleByFloatLiteral {

    public init(floatLiteral value: ValueType.FloatLiteralType) {
        self.quotient = ValueType(floatLiteral: value)
        self.name = nil
    }

}
