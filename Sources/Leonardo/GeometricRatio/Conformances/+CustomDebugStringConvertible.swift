//
//  CustomDebugStringConvertible.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 09.11.24.
//

extension GeometricRatio: CustomDebugStringConvertible {
    
    public var debugDescription: String {
        let typeDescription = String(describing: Self.self)
        let numeratorArg = "of: \(numerator)"
        let denominatorArg = "to: \(denominator)"
        let name = if let name { "\"" + name + "\"" } else { "nil" }
        let nameArg = "name: " + name
        return typeDescription + "(" + numeratorArg + ", " + denominatorArg + ", " + nameArg + ")"
    }
    
}
