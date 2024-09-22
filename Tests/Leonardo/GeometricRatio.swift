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
    #expect(ratio[-1] == ratio[1].reciprocal)
}

@Test("Ratio subscript works for CGFloat")
func cgFloatRatioSubscript() {
    let cgRatio = GeometricRatio<CGFloat>.golden
    let doubleRatio = Ratio.golden
    #expect(Double(cgRatio[1]) == doubleRatio[1])
}

@Test("Ratio upscaled() works")
func upscaled() {
    #expect(10.upscaled(by: .golden).isApproximatelyEqual(to: 16.18, absoluteTolerance: 0.001))
}

@Test("Ratio downscaled() works")
func downscaled() {
    #expect(10.downscaled(by: .golden).isApproximatelyEqual(to: 6.18, absoluteTolerance: 0.001))
}

@Test("Ratio upscaled() work for CGFloat")
func cgFloatUpscaled() {
    let cgRatio = GeometricRatio<CGFloat>.golden
    #expect(CGFloat(10).upscaled(by: cgRatio).isApproximatelyEqual(to: 16.18, absoluteTolerance: 0.001))
}

@Test("Ratio downscaled() work for CGFloat")
func cgFloatDownscaled() {
    let cgRatio = GeometricRatio<CGFloat>.golden
    #expect(CGFloat(10).downscaled(by: cgRatio).isApproximatelyEqual(to: 6.18, absoluteTolerance: 0.001))
}

@Test("Expressible by integer literal")
func intLiteral() {
    let ratio: Ratio = 3
    #expect(ratio.value == 3.0)
}

@Test("Expressible by float literal")
func doubleLiteral() {
    let ratio: Ratio = 1.5
    #expect(ratio.value == 1.5)
}
