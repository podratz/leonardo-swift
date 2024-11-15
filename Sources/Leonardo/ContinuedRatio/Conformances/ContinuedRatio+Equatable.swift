//
//  Equatable.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 16.11.24.
//

extension ContinuedRatio: Equatable where Term: Equatable {
    
    public static func == (lhs: ContinuedRatio<Term>, rhs: ContinuedRatio<Term>) -> Bool {
        lhs.terms == rhs.terms
    }
    
}
