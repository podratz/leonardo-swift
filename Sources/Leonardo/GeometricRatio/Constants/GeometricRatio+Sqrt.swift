//
//  GeometricRatio+Sqrt.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 15.11.24.
//

import Foundation

public extension GeometricRatio where Value: FloatingPoint {
    
    static var sqrt2:  Self { .init(sqrt(2), name: "Square Root of 2" ) }
    static var sqrt3:  Self { .init(sqrt(3), name: "Square Root of 3" ) }
    static var sqrt5:  Self { .init(sqrt(5), name: "Square Root of 5" ) }
    
}
