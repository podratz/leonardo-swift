import Testing
@testable import Leonardo

extension GeometricRatioTests.Extensions {

    @Suite("FloatingPoint + Interpolation")
    struct FloatingPointInterpolationExtensions {

        @Test("interpolate proportionally") func testProportionalInterpolation() {
            let value = 1.interpolated(towards: 2, proportion: .gold)
            #expect(value == Ratio.gold.quotient)
        }

    }

}
