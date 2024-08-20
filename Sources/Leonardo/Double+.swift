//
//  Double+tau.swift
//  
//
//  Created by Nick on 20.08.24.
//

import Foundation

public extension Double {
    /// The whole circumference of a circle in radians.
    public static var tau: Double { 2 * .pi }
    
    /// The natural constant of the golden ratio.
    public static let phi = (1 + sqrt(5)) / 2
    
    /// The angle associated with the golden ratio.
    public static let goldenAngle = tau * (1 - 1 / phi)
}
