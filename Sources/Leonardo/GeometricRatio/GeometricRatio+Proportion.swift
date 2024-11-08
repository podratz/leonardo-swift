//
//  GeometricRatio+Proportion.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

public extension GeometricRatio {

    /// The proportion between one value (default 0) and a second.
    func proportion(_ from: Value = 0, to: Value) -> Value {
         from + (to - from) / quotient
    }

}
