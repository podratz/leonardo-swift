//
//  GeometricRatio+Tail.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 08.11.24.
//

import RealModule

public extension GeometricRatio where Value: Real {
    
    var tail: DropFirstSequence<Self> {
        self.dropFirst()
    }
    
}
