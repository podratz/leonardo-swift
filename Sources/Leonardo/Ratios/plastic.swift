//
//  Plastic.swift
//  
//
//  Created by Nick on 24.08.24.
//

import Foundation

public extension Ratio where ValueType: FloatingPoint {

    static var plastic: Self {
        var x: ValueType = 1.0
        for _ in 0..<1000 {
            let f = x * x * x - x - 1
            x -= f / (3 * x * x - 1)
            if abs(f) < 1e-12 { break }
        }
        return .init(x)
    }

}
