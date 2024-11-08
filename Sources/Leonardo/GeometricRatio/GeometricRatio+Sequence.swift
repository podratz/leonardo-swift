//
//  GeometricRatio+Sequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio where Value: Real {
    
    func tail(_ after: Int, length: Int? = nil) -> any Sequence<Self> {
        if let length {
            return sequence(length: length + after).dropFirst(after)
        } else {
            return infiniteSequence.dropFirst(after)
        }
    }
    
    func sequence(length: Int) -> FiniteSequence {
        FiniteSequence(ratio: self, length: length)
    }
    
    var infiniteSequence: Self.InfiniteSequence {
        InfiniteSequence(ratio: self)
    }

}
