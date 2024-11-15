//
//  ContinuedRatio+Simplified.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

public extension ContinuedRatio where Term == Int {
    
    var simplified: Self {
        let gcd = gcd(terms)
        let simplifiedTerms = terms.map { $0 / gcd }
        return Self(simplifiedTerms)
    }

}
