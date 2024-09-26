import Testing
@testable import Leonardo
import CoreGraphics

extension GeometricRatioTests {
    struct Subscripts {

        @Test("Ratio subscripts", arguments: [Ratio.golden])
        func testDoubleValueSubscripts(ratio: Ratio) {
            #expect(ratio[-1] == ratio[1].reciprocal)
            #expect(ratio[0] == 1)
            #expect(ratio[1] == ratio.value)
            #expect(ratio[2] == ratio.value * ratio.value)
        }

        @Test("GeometricRatio<CGFloat> subscripts")
        func testCGFloatValueSubscripts() {
            let cgRatio = GeometricRatio<CGFloat>.golden
            let doubleRatio = Ratio.golden
            #expect(Double(cgRatio[1]) == doubleRatio[1])
        }

    }
}
