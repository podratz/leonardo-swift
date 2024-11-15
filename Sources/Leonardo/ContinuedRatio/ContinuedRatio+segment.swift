//
//  Untitled.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

import RealModule

extension ContinuedRatio where Term: Real {
    
    func segment(_ number: Term) -> [Term] {
        normalized.terms.map { $0 * number }
    }
    
}

extension ContinuedRatio where Term == Int {
    
    func segment(_ number: Double) -> [Double] {
        normalized.terms.map { $0 * number }
    }
    
}
