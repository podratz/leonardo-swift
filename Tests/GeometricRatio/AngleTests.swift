import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Angles {

        @Test("golden angle approximation")
        func checkGoldenAngle() {
            let goldenAngle = Ratio.gold.angle.degrees
            #expect(goldenAngle.isApproximatelyEqual(to: 137.5, absoluteTolerance: 0.1))
        }
        
    }
}
