//
//  GeometricRatio.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

import RealModule

// MARK: - Geometric Ratio

/// The Ratio type embodies the concept of a geometric ratio. It is intended to make UI work based on geometric relationships easier and more intuitive.
/// The type provides many properties and methods that allow for convenient access to many ratios' irrational properties.
/// Several common ratios are provided and made accessible as static computed variables. Try `Ratio.gold` to get started.
public struct GeometricRatio<Value: FloatingPoint> {
    public typealias Value = Value
    
    public let numerator: Value
    public let denominator: Value

    public let name: String?

    public init(of numerator: Value, to denominator: Value, name: String? = nil) {
        self.numerator = numerator
        self.denominator = denominator
        self.name = name
    }
}
