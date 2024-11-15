//
//  ContinuedRatio+Simplified.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

public extension ContinuedRatio where Term == Int {
    
    var simplified: [Term] {
        let gcd = gcd(terms)
        return terms.map { $0 / gcd }
    }

}
