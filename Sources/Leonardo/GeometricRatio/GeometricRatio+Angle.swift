//
//  GeometricRatio+Angle.swift
//  Leonardo
//
//  Created by Nick on 26.09.24.
//

// MARK: ValueType is Double

public extension GeometricRatio where ValueType == Double {

    /// The angle associated with the ratio.
    var angle: Angle {
        .init(radians: .tau * (1 - 1 / value))
    }

    /// The sequence of angles derived from iterative application of this ratio.
    var angles: some Sequence<Angle> {
        (0...).lazy.map { index in
            .init(radians: self[index] * angle.radians)
        }
    }

    /// The phase value derived from interpreting the ratio as an angle.
    var phase: ValueType {
        angle.radians.truncatingRemainder(dividingBy: .tau)
    }

}
