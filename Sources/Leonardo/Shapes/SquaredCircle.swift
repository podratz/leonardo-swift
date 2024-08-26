//
//  SquaredCircle.swift
//  
//
//  Created by Nick on 26.08.24.
//

import Numerics

public struct SquaredCircle<Number: Real> {
    
    public let radius: Number
    public let cornerRadius: Number
    
    public var area: Number {
        let squareArea = Number.pow(radius, 2)
        let squareFromCornersArea = Number.pow(2 * cornerRadius, 2)
        let circleFromCornersArea = Number.pow(cornerRadius, 2) * .pi
        return squareArea - (squareFromCornersArea - circleFromCornersArea)
    }
    
}
