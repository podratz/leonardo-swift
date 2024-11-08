//
//  Sequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio: Sequence where Value: Real {
    
    public func makeIterator() -> Iterator {
        return Iterator(self)
    }

}
