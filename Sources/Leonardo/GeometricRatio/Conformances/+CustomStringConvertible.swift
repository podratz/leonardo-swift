//
//  +CustomStringConvertible.swift
//  leonardo-swift
//
//  Created by Nick Podratz on 09.11.24.
//

import Foundation

extension GeometricRatio: CustomStringConvertible where Value == Double {
    
    public var description: String {
        numericDescription.appendingSpaced(qualifiedName.bracketed)
    }

    public var qualifiedName: String {
        (name ?? "Unnamed").appendingSpaced("Ratio")
    }
    
    public var numericDescription: String {
        let formattedNumerator = numerator.termFormatted
        let formattedDenominator = denominator.termFormatted
        
        return formattedNumerator + Self.dividerSymbol + formattedDenominator
    }
        
    private static var dividerSymbol: String {
        UnicodeScalar(0x2236).flatMap(String.init) ?? ":"
    }

}

fileprivate extension String {
    
    var bracketed: String {
        "(" + self + ")"
    }
    
    func appendingSpaced(_ other: some StringProtocol) -> String {
        self + " " + other
    }
}

extension Double {
    
    var termFormatted: String {
        formatTerm(self)
    }
    
    private func formatTerm(_ term: Self) -> String {
        let numerator = NSNumber(floatLiteral: term)
        let formattedNumerator = Self.termFormatter.string(from: numerator)!
        return formattedNumerator
    }

    private static var termFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 3
        formatter.locale = .init(identifier: "en_US")
        return formatter
    }

}
