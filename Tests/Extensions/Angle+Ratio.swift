import Testing
@testable import Leonardo

extension GeometricRatioTests.Extensions {
    @Suite("Angle + Ratio")
    struct AngleExtensions {

        @Test("Initialize Angles from ratios", arguments: Ratio.metals)
        func testAngleFromRatio(ratio: Ratio) {
            #expect(Angle(ratio) == ratio.angle)
        }

    }
}
