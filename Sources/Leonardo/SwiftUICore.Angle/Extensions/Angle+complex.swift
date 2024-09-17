//
//  Angle+complex.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

import ComplexModule
import RealModule

public extension Angle {

    /// The complex number corresponding to the angle on the unit circle.
    var complex: Complex<Double> {
        Complex(length: 1, phase: radians)
    }

}
