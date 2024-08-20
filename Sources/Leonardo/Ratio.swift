//
//  Ratio.swift
//
//
//  Created by Nick on 20.08.24.
//

import Foundation

public struct Ratio {
    public var value: Double
    
    public init(_ value: Double) {
        self.value = value
    }
}

public extension Ratio {
    /// The angle associated with the ratio.
    public var angle: Double {
        .tau * (1 - (1 / value))
    }
}

public extension Ratio {
    /// The proportion of  a give whole.
    public func proportion(of whole: Double) -> Double {
        (1 / value) * whole
    }
}

public extension Ratio {
    public static let platinum =  Ratio((0 + sqrt( 4)) / 2)
    public static let gold =      Ratio((1 + sqrt( 5)) / 2)
    public static let silver =    Ratio((2 + sqrt( 8)) / 2)
    public static let bronce =    Ratio((3 + sqrt(13)) / 2)
    public static let copper =    Ratio((4 + sqrt(20)) / 2)
    public static let nickel =    Ratio((5 + sqrt(29)) / 2)
    public static let aluminium = Ratio((6 + sqrt(40)) / 2)
    public static let iron =      Ratio((7 + sqrt(53)) / 2)
    public static let tin =       Ratio((8 + sqrt(68)) / 2)
    public static let lead =      Ratio((9 + sqrt(85)) / 2)
}
