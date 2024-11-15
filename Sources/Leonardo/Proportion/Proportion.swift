//
//  Proportion.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

public struct Proportion<Value: FloatingPoint> {

    public let numerator: Value
    public let denominator: Value

    public init(_ ratio: GeometricRatio<Value>, numerator: Value) {
        self.numerator = numerator
        self.denominator = ratio.reciprocal * numerator
    }

    public init(_ ratio: GeometricRatio<Value>, denominator: Value) {
        self.numerator = ratio.quotient * denominator
        self.denominator = denominator
    }

}
