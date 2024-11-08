//
//  FiniteSequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

public extension GeometricRatio {
    
    struct FiniteSequence: Sequence where Value: Real {
        let ratio: GeometricRatio<Value>
        let length: Int
        
        public func makeIterator() -> GeometricRatio<Value>.Iterator {
            return GeometricRatio.Iterator(self)
        }
    }
    
}
