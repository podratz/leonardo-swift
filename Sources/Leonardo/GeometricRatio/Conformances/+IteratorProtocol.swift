//
//  +IteratorProtocol.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

extension GeometricRatio: IteratorProtocol where Value: FloatingPoint {
    init(_ ratio: Self) {
        self = ratio
    }

    public func next() -> Self? {
        Self(quotient * quotient)
    }
}
