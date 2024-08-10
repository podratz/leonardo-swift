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
    
    var generator: MetalGenerator {
        MetalGenerator(metal: self)
    }
    
}
