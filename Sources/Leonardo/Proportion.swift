//
//  Proportion.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

public struct Proportion<Value: FloatingPoint> {
    
    let ratio: GeometricRatio<Value>
    let providedValue: ProvidedValue
    
    public var numerator: Value {
        switch providedValue {
        case .numerator(let numerator):
            numerator
        case .denominator(let denominator):
            ratio.quotient * denominator
        }
    }
    
    public var denominator: Value {
        switch providedValue {
        case .numerator(let numerator):
            ratio.reciprocal * numerator
        case .denominator(let denominator):
            denominator
        }
    }
    
    public init(_ ratio: GeometricRatio<Value>, numerator value: Value) {
        self.ratio = ratio
        self.providedValue = .numerator(value)
    }

    public init(_ ratio: GeometricRatio<Value>, denominator value: Value) {
        self.ratio = ratio
        self.providedValue = .denominator(value)
    }
    
    enum ProvidedValue {
        case numerator(_ value: Value)
        case denominator(_ value: Value)
    }
    
}
