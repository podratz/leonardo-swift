import Testing
@testable import Leonardo
import CoreGraphics

extension RatioTests {
    struct Subscripts {

        @Test("subscript with positive integer")
        func checkSubscriptWorks() {
            #expect(Ratio.golden[2] == Ratio.golden.applied(times: 2))
        }

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

    }
}
