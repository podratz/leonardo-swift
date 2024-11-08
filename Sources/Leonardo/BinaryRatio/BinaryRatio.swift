//
//  GeneralRatio.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

/// Any type that puts two terms into a semantic relationship.
public protocol BinaryRatio {
    associatedtype Term

    /// The first term of a binary ratio.
    var antecent: Term { get }
    
    /// The second term of a binary ratio.
    var consequent: Term { get }
}

public extension BinaryRatio {
    typealias Term = Self.Term
    
    /// The two terms of a binary ratio.
    var terms: (Term, Term) {
        (antecent, consequent)
    }
}
