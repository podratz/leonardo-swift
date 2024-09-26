import Testing
@testable import Leonardo
import CoreGraphics

extension GeometricRatioTests {
    struct Scaling {

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

        @Test("applied works with all arguments")
        func testApplied() {
            #expect(Ratio.golden.applied() == Ratio.golden.value)
            #expect(Ratio.golden.applied(to: 50) == 50 * Ratio.golden.value)
            #expect(Ratio.golden.applied(times: 2) == .pow(Ratio.golden.value, 2))
            #expect(Ratio.golden.applied(to: 50, times: 2) == 50 * .pow(Ratio.golden.value, 2))

            // Edge cases
            #expect(Ratio.golden.applied(to: -50, times: 2) == -50 * .pow(Ratio.golden.value, 2))
            #expect(Ratio.golden.applied(to: 0) == 0)
            #expect(Ratio.golden.applied(times: 0) == 1)
            #expect(Ratio.golden.applied(to: 0, times: 0) == 0)
        }

    }
}
