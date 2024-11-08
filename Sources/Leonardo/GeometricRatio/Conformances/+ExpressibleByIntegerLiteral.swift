//
//  Untitled.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio: ExpressibleByIntegerLiteral where Value: FloatingPoint & ExpressibleByIntegerLiteral {

    public init(integerLiteral value: Value.IntegerLiteralType) {
        self.init(Value(integerLiteral: value), name: nil)
    }

}
