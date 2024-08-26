//
//  Circle.swift
//  
//
//  Created by Nick on 25.08.24.
//

import Numerics

public struct Circle<Number: Real> {
    
    public let radius: Number
    
    public var area: Number {
        .pow(radius, 2) * .pi
    }
    
    public var diameter: Number {
        2 * radius
    }
    
    public init(radius: Number) {
        self.radius = radius
    }
    
    public init(area: Number) {
        self.radius = .sqrt(area / .pi)
    }
    
}
