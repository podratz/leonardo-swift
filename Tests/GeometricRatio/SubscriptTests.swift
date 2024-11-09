import Testing
@testable import Leonardo
import CoreGraphics

extension GeometricRatioTests {
    struct Subscripts {

        @Test("Ratio subscripts", arguments: [Ratio.gold])
        func testDoubleValueSubscripts(ratio: Ratio) {
            #expect(ratio[-1].quotient == ratio[1].reciprocal)
            #expect(ratio[0].quotient == 1)
            #expect(ratio[1].quotient == ratio.quotient)
            #expect(ratio[2].quotient == ratio.quotient * ratio.quotient)
        }
        
        @Test("Ratio range subscripts")
        func testRatioRangeSubscript() {
            let thirdRatio = Ratio.gold[3]
            let firstFiveRatios = Ratio.gold[1...5]
            #expect(thirdRatio == firstFiveRatios[2])
        }

        @Test("GeometricRatio<CGFloat> subscripts")
        func testCGFloatValueSubscripts() {
            let cgRatio = GeometricRatio<CGFloat>.gold
            let doubleRatio = Ratio.gold
            #expect(Double(cgRatio[1].quotient) == doubleRatio[1].quotient)
        }
    }
}
