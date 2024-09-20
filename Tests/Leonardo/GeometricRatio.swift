//
//  GeometricRatio.swift
//  Leonardo
//
//  Created by Nick on 20.09.24.
//

import CoreGraphics
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

@Test("Ratio subscript works for CGFloat")
func cgFloatRatioSubscript() {
    let cgRatio = GeometricRatio<CGFloat>.golden
    let doubleRatio = Ratio.golden
    #expect(Double(cgRatio[1]) == doubleRatio[1])
}
