//
//  +ExpressibleByFloatLiteral.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio: ExpressibleByFloatLiteral where Value: FloatingPoint & ExpressibleByFloatLiteral {

    public init(floatLiteral value: Value.FloatLiteralType) {
        self.init(Value(floatLiteral: value), name: nil)
    }

}
