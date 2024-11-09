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
        let numerator = NSNumber(floatLiteral: numerator)
        let formattedNumerator = Self.termFormatter.string(from: numerator)!

        let denominator = NSNumber(floatLiteral: denominator)
        let formattedDenominator = Self.termFormatter.string(from: denominator)!
        
        return formattedNumerator + Self.dividerSymbol + formattedDenominator
    }

    public var qualifiedName: String {
        let namePrefix = if let name { name } else { "Unnamed" }
        return namePrefix + " Ratio"
    }
        
    private static var termFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 3
        formatter.locale = .init(identifier: "en_US")
        return formatter
    }
    
    private static var dividerSymbol: String {
        UnicodeScalar(0x2236).flatMap(String.init) ?? ":"
    }

}
