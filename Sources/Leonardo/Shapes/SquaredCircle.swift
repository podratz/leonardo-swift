//
//  SquaredCircle.swift
//  
//
//  Created by Nick on 26.08.24.
//

import Foundation

struct SquaredCircle {
    
    let radius: Double
    let cornerRadius: Double
    
    var area: Double {
        let squareArea = pow(radius, 2)
        let squareFromCornersArea = pow(2 * cornerRadius, 2)
        let circleFromCornersArea = .pow(cornerRadius, 2) * .pi
        return squareArea - (squareFromCornersArea - circleFromCornersArea)
    }
    
}
