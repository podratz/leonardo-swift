//
//  +CustomStringConvertible.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 09.11.24.
//

import Foundation

extension GeometricRatio: CustomStringConvertible where Value == FloatLiteralType {
    
    public var description: String {
        "\(numericDescription) (\(qualifiedName))"
    }

    public var numericDescription: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 3
        formatter.locale = .init(identifier: "en_US")

        let numerator = NSNumber(floatLiteral: numerator)
        let formattedNumerator = formatter.string(from: numerator)!

        let denominator = NSNumber(floatLiteral: denominator)
        let formattedDenominator = formatter.string(from: denominator)!
        
        return formattedNumerator + ":" + formattedDenominator
    }

    public var qualifiedName: String {
        let namePrefix = if let name { name } else { "Unnamed" }
        return namePrefix + " Ratio"
    }
    
}
