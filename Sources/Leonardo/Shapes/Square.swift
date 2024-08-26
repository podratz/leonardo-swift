//
//  Square.swift
//
//
//  Created by Nick on 25.08.24.
//

import Numerics

struct Square {
    
    let length: Double
    
    var area: Double {
        .pow(length, 2)
    }
    
    init(length: Double) {
        self.length = length
    }
    
    init(area: Double) {
        self.length = .sqrt(area)
    }
    
}
