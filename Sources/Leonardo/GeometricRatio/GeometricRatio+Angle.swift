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
    var angles: some Sequence<Angle> {
        tail.map(\.angle)
    }

    /// The phase value derived from interpreting the ratio as an angle.
    var phase: Value {
        angle.radians.truncatingRemainder(dividingBy: .tau)
    }

}
