//
//  ContinuedRatio.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

public struct ContinuedRatio<Term> {
    public let terms: [Term]
    public let name: String?
    
    public init(_ terms: Term..., name: String? = nil) {
        self.terms = terms
        self.name = name
    }
}
