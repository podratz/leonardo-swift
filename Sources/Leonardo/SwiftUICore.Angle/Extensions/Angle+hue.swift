//
//  Angle+hue.swift
//  Leonardo
//
//  Created by Nick on 17.09.24.
//

public extension Angle {

    /// The hue corresponding to the angle normalized to the interval [0, 1].
    var hue: Double {
        phase / .tau
    }

}
