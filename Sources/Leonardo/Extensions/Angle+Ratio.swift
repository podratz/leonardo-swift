//
//  Angle+Ratio.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

public extension Angle {

    /// Initializes an `Angle` from the provided ratio.
    init(_ ratio: GeometricRatio<Double>) {
        self = ratio.angle
    }

}
