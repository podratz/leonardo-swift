import Testing
@testable import Leonardo
import CoreGraphics

extension GeometricRatioTests {
    struct Subscripts {

        @Test("Ratio subscripts", arguments: [Ratio.gold])
        func testDoubleValueSubscripts(ratio: Ratio) {
            #expect(ratio[-1] == ratio[1].reciprocal)
            #expect(ratio[0] == 1)
            #expect(ratio[1] == ratio.quotient)
            #expect(ratio[2] == ratio.quotient * ratio.quotient)
        }

        @Test("GeometricRatio<CGFloat> subscripts")
        func testCGFloatValueSubscripts() {
            let cgRatio = GeometricRatio<CGFloat>.gold
            let doubleRatio = Ratio.gold
            #expect(Double(cgRatio[1]) == doubleRatio[1])
        }

    }
}
