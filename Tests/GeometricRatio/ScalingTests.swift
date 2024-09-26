import Testing
@testable import Leonardo
import CoreGraphics

extension GeometricRatioTests {
    struct Scaling {

        @Test("scale up")
        func testScaledUp() {
            #expect(10.scaledUp(by: .golden).isApproximatelyEqual(to: 16.18, absoluteTolerance: 0.001))
        }

        @Test("scale down")
        func testScaledDown() {
            #expect(10.scaledDown(by: .golden).isApproximatelyEqual(to: 6.18, absoluteTolerance: 0.001))
        }

        @Test("scale up (CGFloat)")
        func testScaledUpCGFloat() {
            let cgRatio = GeometricRatio<CGFloat>.golden
            #expect(CGFloat(10).scaledUp(by: cgRatio).isApproximatelyEqual(to: 16.18, absoluteTolerance: 0.001))
        }

        @Test("scale down (CGFloat)")
        func testScaledDownCGFloat() {
            let cgRatio = GeometricRatio<CGFloat>.golden
            #expect(CGFloat(10).scaledDown(by: cgRatio).isApproximatelyEqual(to: 6.18, absoluteTolerance: 0.001))
        }
        
    }
}
