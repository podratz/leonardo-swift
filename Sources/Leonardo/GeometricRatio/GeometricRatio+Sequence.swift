//
//  GeometricRatio+Sequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio where Value: Real {
    
    var tail: AnySequence<Self> {
        AnySequence(sequence.dropFirst())
    }
    
    var sequence: AnySequence<Self> {
        AnySequence(InfiniteSequence(ratio: self))
    }

}
