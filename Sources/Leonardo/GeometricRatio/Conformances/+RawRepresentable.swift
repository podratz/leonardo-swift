//
//  +RawRepresentable.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 09.11.24.
//

extension GeometricRatio: RawRepresentable where Value: FloatingPoint {
    public typealias RawValue = (Value, Value, String?)

    public var rawValue: RawValue {
        (antecent, consequent, name)
    }
    
    public init?(rawValue: RawValue) {
        let (numerator, denominator, name) = rawValue
        self.init(of: numerator, to: denominator, name: name)
    }
}
