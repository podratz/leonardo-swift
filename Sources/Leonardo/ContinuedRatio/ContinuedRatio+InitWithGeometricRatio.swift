//
//  ContinuedRatio+InitFromRatio.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 16.11.24.
//

import RealModule

extension ContinuedRatio where Term: Real {
    
    public init(_ ratio: GeometricRatio<Term>, numberOfTerms: Int, name: String? = nil) {
        let terms = (0...numberOfTerms).map { index in
            let power = numberOfTerms - index
            return Term.pow(ratio.quotient, power)
        }
        self.init(terms, name: name)
    }
}
