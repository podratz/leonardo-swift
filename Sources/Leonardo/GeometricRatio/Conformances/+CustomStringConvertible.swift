//
//  +CustomStringConvertible.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 09.11.24.
//

extension GeometricRatio: CustomStringConvertible {
    
    public var description: String {
        let numerator = "\(numerator)"
        let denominator = "\(denominator)"
        let name = if let name { name } else { "Unnamed" }
        return numerator + ":" + denominator + " " + "(" + name + " Ratio" + ")"
    }
    
}
