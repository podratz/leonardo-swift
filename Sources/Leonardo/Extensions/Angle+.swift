//
//  Angle+Ratio.swift
//
//
//  Created by Nick on 20.08.24.
//

public extension Angle {

    /// The phase of the angle in the range [0, tau).
    var phase: Double {
        let remainder = radians.truncatingRemainder(dividingBy: .tau)
        let adujustedRemainder = remainder < 0 ? remainder + .tau : remainder
        return adujustedRemainder
    }

    /// The hue corresponding to the angle normalized to the interval [0, 1].
    var hue: Double {
        phase / .tau
    }

}

import ComplexModule
import RealModule

public extension Angle {

    /// The complex number corresponding to the angle on the unit circle.
    var complex: Complex<Double> {
        Complex(length: 1, phase: radians)
    }

}
