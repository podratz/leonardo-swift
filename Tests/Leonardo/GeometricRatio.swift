//
//  GeometricRatio.swift
//  Leonardo
//
//  Created by Nick on 20.09.24.
//

import Testing
@testable import Leonardo

@Test("Ratio subscript for a positive number")
func positiveRatioSubscript() {
    let ratio = Ratio.golden
    #expect(ratio[2] == ratio.value * ratio.value)
}

@Test("Ratio subscript for a negative number")
func negativeRatioSubscript() {
    let ratio = Ratio.golden
    #expect(ratio[-1] == 1 / ratio[1])
}
