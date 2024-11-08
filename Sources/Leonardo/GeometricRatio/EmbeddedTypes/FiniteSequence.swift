//
//  FiniteSequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

public extension GeometricRatio {
    
    struct Sequence: Swift.Sequence where Value: Real {
        let ratio: GeometricRatio<Value>
        let length: Int
        
        public func makeIterator() -> Iterator {
            return Iterator(self)
        }
    }
    
}
