//
//  Angle+GeometricRatio.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

import SwiftUICore

public extension Angle {

    /// Initializes an `Angle` from the provided ratio.
    @inlinable init(ratio: GeometricRatio<Double>) {
        self.init(radians: .tau * (1 - ratio.reciprocal))
    }

}
