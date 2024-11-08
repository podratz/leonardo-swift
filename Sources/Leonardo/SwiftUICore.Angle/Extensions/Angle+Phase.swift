//
//  Angle+phase.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

public extension Angle {

    /// The phase of the angle in the range [0, tau).
    var phase: Double {
        let remainder = radians.truncatingRemainder(dividingBy: .tau)
        return remainder < 0 ? remainder + .tau : remainder
    }

}
