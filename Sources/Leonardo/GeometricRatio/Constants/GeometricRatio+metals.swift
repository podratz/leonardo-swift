//
//  Metals.swift
//
//
//  Created by Nick on 24.08.24.
//

import Foundation

public extension GeometricRatio {
    
    static var metals: [Self] {[
        platinum, gold, silver, bronce, copper, nickel, aluminium, iron, tin, lead
    ]}
    
    static var platinum:  Self { .init((0 + sqrt( 4)) / 2, name: "Platinum" ) }
    static var gold:      Self { .init((1 + sqrt( 5)) / 2, name: "Golden"   ) }
    static var silver:    Self { .init((2 + sqrt( 8)) / 2, name: "Silver"   ) }
    static var bronce:    Self { .init((3 + sqrt(13)) / 2, name: "Bronce"   ) }
    static var copper:    Self { .init((4 + sqrt(20)) / 2, name: "Copper"   ) }
    static var nickel:    Self { .init((5 + sqrt(29)) / 2, name: "Nickel"   ) }
    static var aluminium: Self { .init((6 + sqrt(40)) / 2, name: "Aluminium") }
    static var iron:      Self { .init((7 + sqrt(53)) / 2, name: "Iron"     ) }
    static var tin:       Self { .init((8 + sqrt(68)) / 2, name: "Tin"      ) }
    static var lead:      Self { .init((9 + sqrt(85)) / 2, name: "Lead"     ) }
}
