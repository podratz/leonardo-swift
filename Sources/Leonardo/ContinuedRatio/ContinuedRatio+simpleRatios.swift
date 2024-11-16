//
//  ContinuedRatio+constituents.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 16.11.24.
//

extension ContinuedRatio {
    
    var simpleRatios: [GeometricRatio<Term>] {
        var output: [GeometricRatio<Term>] = []
        for i in stride(from: 0, to: terms.count - 1, by: 1) {
            let ratio = GeometricRatio<Term>(of: terms[i], to: terms[i+1])
            output.append(ratio)
        }
        return output
    }
}
