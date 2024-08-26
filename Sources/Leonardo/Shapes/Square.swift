//
//  Square.swift
//
//
//  Created by Nick on 25.08.24.
//

import Numerics

public struct Square {
    
    public let length: Double
    
    public var area: Double {
        .pow(length, 2)
    }
    
    public init(length: Double) {
        self.length = length
    }
    
    public init(area: Double) {
        self.length = .sqrt(area)
    }
    
}
