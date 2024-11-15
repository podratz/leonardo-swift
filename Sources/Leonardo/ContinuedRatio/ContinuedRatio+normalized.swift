//
//  ContinuedRatio+normalized.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

import RealModule

public extension ContinuedRatio where Term: Real {

    var normalized: Self {
        let sum = terms.reduce(0) { $0 + $1 }
        let normalizedTerms = terms.map { $0 / sum }
        return Self(normalizedTerms)
    }
    
}

public extension ContinuedRatio where Term == Int {
    
    var normalized: ContinuedRatio<Double> {
        let sum: Double = terms.reduce(0.0) { return $0 + Double($1) }
        let normalizedTerms = terms.map { Double($0) / sum }
        return ContinuedRatio<Double>(normalizedTerms)
    }
    
}
