//
//  SquaredCircle.swift
//  
//
//  Created by Nick on 26.08.24.
//

import RealModule

public struct SquaredCircle<Number: Real> {
    
    public let radius: Number
    public let cornerRadius: Number
    
    public var area: Number {
        let squareArea = Number.pow(2 * radius, 2)
        let squareFromCornersArea = Number.pow(2 * cornerRadius, 2)
        let circleFromCornersArea = Number.pow(cornerRadius, 2) * .pi
        return squareArea - (squareFromCornersArea - circleFromCornersArea)
    }
    
    public init(area: Number, cornerRadius: Number) {
        guard cornerRadius > 0 else {
            self.cornerRadius = 0
            self.radius = Square(area: area).length / 2
            return
        }
        let circle = Circle(area: area)
        guard cornerRadius < circle.radius else {
            self.cornerRadius = circle.radius
            self.radius = circle.radius
            return
        }
        self.cornerRadius = cornerRadius
        let squareFromCornersArea = Number.pow(2 * cornerRadius, 2)
        let circleFromCornersArea = Number.pow(cornerRadius, 2) * .pi
        let completedSquareArea = area + squareFromCornersArea - circleFromCornersArea
        self.radius = Number.sqrt(completedSquareArea / 4)
    }
    
    public init(area: Number, roundness: Number = 0.5) {
        let clampedRoundness = max(0, min(1, roundness))
        let circle = Circle(area: area)
        let cornerRadius = clampedRoundness * circle.radius
        self.init(area: area, cornerRadius: cornerRadius)
    }

}
