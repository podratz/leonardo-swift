//
//  GeometricRatio+Sequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio where Value: Real {
    
    var tail: some Sequence<Self> {
        sequence.dropFirst()
    }
    
    var sequence: some Sequence<Self> {
        InfiniteSequence(ratio: self)
    }

}
