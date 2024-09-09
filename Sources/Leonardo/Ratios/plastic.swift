//
//  Plastic.swift
//  
//
//  Created by Nick on 24.08.24.
//

import Numerics

public extension Ratio where ValueType: FloatingPoint {

    nonisolated static var plastic: Self {
        var x: ValueType = 1
        var f: ValueType
        var i = 0
        
        repeat {
            i += 1
            f = x * x * x - x - 1
            x -= f / (3 * x * x - 1)
        } while(abs(f) > .ulpOfOne && i < 10)
        
        return .init(x, name: "Plastic")
    }

}
