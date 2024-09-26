import Testing
@testable import Leonardo
import CoreGraphics

extension GeometricRatioTests {
    struct Scaling {

        @Test("Ratio upscaled() works")
        func upscaled() {
            #expect(10.scaledUp(by: .golden).isApproximatelyEqual(to: 16.18, absoluteTolerance: 0.001))
        }

        @Test("Ratio downscaled() works")
        func downscaled() {
            #expect(10.scaledDown(by: .golden).isApproximatelyEqual(to: 6.18, absoluteTolerance: 0.001))
        }

        @Test("Ratio upscaled() work for CGFloat")
        func cgFloatUpscaled() {
            let cgRatio = GeometricRatio<CGFloat>.golden
            #expect(CGFloat(10).scaledUp(by: cgRatio).isApproximatelyEqual(to: 16.18, absoluteTolerance: 0.001))
        }

        @Test("Ratio downscaled() work for CGFloat")
        func cgFloatDownscaled() {
            let cgRatio = GeometricRatio<CGFloat>.golden
            #expect(CGFloat(10).scaledDown(by: cgRatio).isApproximatelyEqual(to: 6.18, absoluteTolerance: 0.001))
        }
        
    }
}
