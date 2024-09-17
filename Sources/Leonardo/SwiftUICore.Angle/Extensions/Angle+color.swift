//
//  Angle+color.swift
//  Leonardo
//
//  Created by Nick on 18.09.24.
//

import SwiftUICore

public extension Angle {

    /// The color derived from interpreting the angle as the color's hue.
    var color: Color {
        .init(hue: hue, saturation: 1, brightness: 1)
    }

}
