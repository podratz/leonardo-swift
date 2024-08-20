//
//  Ratio.swift
//
//
//  Created by Nick on 20.08.24.
//

import Foundation

struct Ratio {
    var value: Double
    
    init(_ value: Double) {
        self.value = value
    }
}

extension Ratio {
    static let platinum =  Ratio((0 + sqrt( 4)) / 2)
    static let gold =      Ratio((1 + sqrt( 5)) / 2)
    static let silver =    Ratio((2 + sqrt( 8)) / 2)
    static let bronce =    Ratio((3 + sqrt(13)) / 2)
    static let copper =    Ratio((4 + sqrt(20)) / 2)
    static let nickel =    Ratio((5 + sqrt(29)) / 2)
    static let aluminium = Ratio((6 + sqrt(40)) / 2)
    static let iron =      Ratio((7 + sqrt(53)) / 2)
    static let tin =       Ratio((8 + sqrt(68)) / 2)
    static let lead =      Ratio((9 + sqrt(85)) / 2)
}
