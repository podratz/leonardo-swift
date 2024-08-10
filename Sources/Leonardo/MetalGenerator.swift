//
//  File.swift
//  
//
//  Created by Nick on 10.08.24.
//

import Foundation

/// A generator that generates the next metallic number.
struct MetalGenerator: Sequence, IteratorProtocol {
    let metal: Metal
    var current: Double

    /// Returns the next metallic number in the sequence.
    mutating func next() -> Double? {
        defer {
            current *= metal.ratio
        }

        return current
    }
    
    /// Initializes a new generator with its elements following the specified metallic ratio.
    init(metal: Metal, base: Double = 1) {
        self.metal = metal
        self.current = base
    }
}
