//
//  goldenAngle.swift
//
//
//  Created by Nick on 23.08.24.
//

import Numerics

public extension Real {
    
    /// The angle associated with the golden ratio.
    static var goldenAngle: Self { tau * (1 - 1 / phi) }

}
