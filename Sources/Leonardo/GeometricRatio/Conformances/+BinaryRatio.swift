//
//  +BinaryRatio.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio: BinaryRatio {
    public typealias Term = Value

    public var antecent: Term {
        numerator
    }
    
    public var consequent: Term {
        denominator
    }
}
