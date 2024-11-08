//
//  GeometricRatio+Iterator.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio {
    public struct Iterator: IteratorProtocol where Value: FloatingPoint {
        let ratio: GeometricRatio<Value>
        let end: Int?
        var times = 0
        
        init(_ sequence: GeometricSequence<Value>) {
            self.ratio = sequence.ratio
            self.end = sequence.length
        }

        init(_ ratio: GeometricRatio<Value>) {
            self.ratio = ratio
            self.end = nil
        }

        mutating public func next() -> GeometricRatio<Value>? {
            if let end, times >= end { return nil }

            var nextQuotient = ratio.quotient
            
            for _ in 0..<times {
                nextQuotient *= ratio.quotient
            }
            
            times += 1
            return GeometricRatio(nextQuotient)
        }
    }
}
