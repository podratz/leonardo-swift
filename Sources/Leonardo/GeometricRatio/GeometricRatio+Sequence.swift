//
//  GeometricRatio+Sequence.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

extension GeometricRatio where Value: Real {
    
    func infiniteSequence<Element>(mapTo keyPath: KeyPath<Self, Element>) -> [Element] {
        infiniteSequence.map { element in
            element[keyPath: keyPath]
        }
    }
    
    func sequence<Element>(length: Int, mapTo keyPath: KeyPath<Self, Element>) -> [Element] {
        sequence(length: length).map { element in
            element[keyPath: keyPath]
        }
    }
    
    var tail: AnySequence<Self> { tail(1) }
    
    func tail(_ n: Int = 1, length: Int? = nil) -> AnySequence<Self> {
        if let length {
            AnySequence(sequence(length: n + length).dropFirst(n))
        } else {
            AnySequence(infiniteSequence.dropFirst(n))
        }
    }
    
    func sequence(length: Int) -> FiniteSequence {
        FiniteSequence(ratio: self, length: length)
    }
    
    var infiniteSequence: Self.InfiniteSequence {
        InfiniteSequence(ratio: self)
    }

}
