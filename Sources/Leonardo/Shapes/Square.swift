//
//  Square.swift
//
//
//  Created by Nick on 25.08.24.
//

import RealModule

public struct Square<Number: Real> {
    
    public let length: Number
    
    public var area: Number {
        .pow(length, 2)
    }
    
    public init(length: Number) {
        self.length = length
    }
    
    public init(area: Number) {
        self.length = .sqrt(area)
    }
    
}
