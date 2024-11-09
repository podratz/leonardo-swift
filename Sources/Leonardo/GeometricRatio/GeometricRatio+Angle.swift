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
    
    /// The sequence of angles derived from iterative application of this ratio.
    var angles: some Swift.Sequence<Angle> {
        (1...).lazy.map {
            .init(radians: Double($0) * angle.radians)
        }
    }

}
