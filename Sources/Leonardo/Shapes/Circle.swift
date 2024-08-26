//
//  Circle.swift
//  
//
//  Created by Nick on 25.08.24.
//

import Numerics

public struct Circle {
    
    public let radius: Double
    
    public var area: Double {
        .pow(radius, 2) * .pi
    }
    
    public init(radius: Double) {
        self.radius = radius
    }
    
    public init(area: Double) {
        self.radius = .sqrt(area / .pi)
    }
    
}
