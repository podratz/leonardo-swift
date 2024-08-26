//
//  Circle.swift
//  
//
//  Created by Nick on 25.08.24.
//

import Numerics

struct Circle {
    
    let radius: Double
    
    var area: Double {
        .pow(radius, 2) * .pi
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    init(area: Double) {
        self.radius = .sqrt(area / .pi)
    }
    
}
