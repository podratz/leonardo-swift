//
//  Phase.swift
//
//
//  Created by Nick on 20.08.24.
//

import Foundation
import ComplexModule

struct Phase {
    let radians: Double
    
    init(_ radians: Double) {
        self.radians = radians
    }
}

extension Phase {
    var degrees: Double {
        radians * (360 / .tau)
    }

    init(degrees: Double) {
        self.radians = degrees * (.tau / 360)
    }
}

extension Phase {
    var complex: Complex<Double> {
        Complex(length: 1, phase: radians)
    }
}
