//
//  ContinuedRatio+normalized.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

import RealModule

public extension ContinuedRatio where Term: Real {

    var normalized: [Term] {
        let sum = terms.reduce(0) { $0 + $1 }
        return terms.map { $0 / sum }
    }
    
}

public extension ContinuedRatio where Term == Int {
    
    var normalized: [Double] {
        let sum: Double = terms.reduce(0.0) { return $0 + Double($1) }
        return terms.map { Double($0) / sum }
    }
    
}
