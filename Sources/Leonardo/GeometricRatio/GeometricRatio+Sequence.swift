//
//  GeometricRatio+Sequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio where Value: FloatingPoint {
    
    func sequence(length: Int) -> GeometricSequence<Value> {
        GeometricSequence(ratio: self, length: length)
    }
    
    var infiniteSequence: GeometricSequence<Value> {
        GeometricSequence(ratio: self, length: .max)
    }

}
