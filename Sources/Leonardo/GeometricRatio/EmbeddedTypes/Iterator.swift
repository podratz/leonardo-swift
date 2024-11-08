//
//  Iterator.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

public extension GeometricRatio {
    
    struct Iterator: IteratorProtocol where Value: Real {
        let ratio: GeometricRatio<Value>
        let end: Int?
        var times = 0
        
        init(_ ratio: GeometricRatio) {
            self.ratio = ratio
            self.end = nil
        }

        init(_ sequence: GeometricRatio.Sequence) {
            self.ratio = sequence.ratio
            self.end = sequence.length
        }
        
        mutating public func next() -> GeometricRatio<Value>? {
            if let end, times >= end { return nil }
            times += 1
            return GeometricRatio(Value.pow(ratio.quotient, times))
        }
    }
    
}
