//
//  File.swift
//  
//
//  Created by Nick on 10.08.24.
//

import Foundation

struct MetalGenerator: Sequence, IteratorProtocol {
    let metal: Metal
    var current: Double

    mutating func next() -> Double? {
        defer {
            current *= metal.ratio
        }

        return current
    }
    
    init(metal: Metal, current: Double = 1) {
        self.metal = metal
        self.current = current
    }
}
