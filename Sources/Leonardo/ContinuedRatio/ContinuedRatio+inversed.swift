//
//  ContinuedRatio+Inverse.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 16.11.24.
//

public extension ContinuedRatio {
    
    var inversed: Self {
        Self(terms.reversed(), name: name)
    }
    
}
