//
//  Metal.swift
//
//
//  Created by Nick on 10.08.24.
//

protocol Metal {
    
    var ratio: Double { get }
    
    var generator: MetalGenerator { get }
    
}

extension Metal {
    
    /// Creates a metallic generator based on a provided starting value.
    func generator(base: Double = 1) -> MetalGenerator {
        MetalGenerator(metal: self, base: base)
    }
    
}
