//
//  GeometricRatio+Angle.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: ValueType is Double

public extension GeometricRatio where Value == Double {

    /// The angle associated with the ratio.
    var angle: Angle {
        .init(ratio: self)
    }

}
