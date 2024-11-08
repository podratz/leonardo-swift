//
//  GeometricSequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio {
    
    public struct FiniteSequence: Swift.Sequence where Value: FloatingPoint {
        let ratio: GeometricRatio<Value>
        let length: Int
        
        public func makeIterator() -> GeometricRatio<Value>.Iterator {
            return GeometricRatio.Iterator(self)
        }
    }

    public struct InfiniteSequence: Swift.Sequence where Value: FloatingPoint {
        let ratio: GeometricRatio<Value>
        
        public func makeIterator() -> GeometricRatio<Value>.Iterator {
            return GeometricRatio.Iterator(self)
        }
    }
    
}
