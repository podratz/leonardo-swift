//
//  SquaredCircle.swift
//  
//
//  Created by Nick on 26.08.24.
//

import Foundation

public struct SquaredCircle {
    
    public let radius: Double
    public let cornerRadius: Double
    
    public var area: Double {
        let squareArea = pow(radius, 2)
        let squareFromCornersArea = pow(2 * cornerRadius, 2)
        let circleFromCornersArea = .pow(cornerRadius, 2) * .pi
        return squareArea - (squareFromCornersArea - circleFromCornersArea)
    }
    
}
