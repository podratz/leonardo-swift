//
//  GeometricRatio+Sequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio where Value: Real {
    
    func tail(_ dropFirstK: Int = 1, length: Int? = nil) -> AnySequence<Self> {
        if let length {
            AnySequence(sequence(length: dropFirstK + length).dropFirst(dropFirstK))
        } else {
            AnySequence(infiniteSequence.dropFirst(dropFirstK))
        }
    }
    
    func sequence(length: Int) -> FiniteSequence {
        FiniteSequence(ratio: self, length: length)
    }
    
    var infiniteSequence: Self.InfiniteSequence {
        InfiniteSequence(ratio: self)
    }

}
