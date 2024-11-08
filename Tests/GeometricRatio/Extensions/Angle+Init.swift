import Testing
@testable import Leonardo

extension GeometricRatioTests.Extensions {

    @Suite("Angle + Init")
    struct AngleExtensions {

        @Test("Angle(ratio:)", arguments: Ratio.metals)
        func testAngleFromRatio(ratio: Ratio) {
            #expect(Angle(ratio: ratio) == ratio.angle)
        }

    }

}
