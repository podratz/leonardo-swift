//
//  Plastic.swift
//  
//
//  Created by Nick on 24.08.24.
//

import RealModule

public extension GeometricRatio {

    nonisolated static var plastic: Self {
        var x: Value = 1
        var f: Value
        var i = 0
        
        repeat {
            i += 1
            f = x * x * x - x - 1
            x -= f / (3 * x * x - 1)
        } while(abs(f) > .ulpOfOne && i < 10)
        
        return .init(x, name: "Plastic")
    }

}
