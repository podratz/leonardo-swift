import Testing
@testable import Leonardo
import CoreGraphics

extension GeometricRatioTests.Extensions {

    @Suite("Vector Arithmetic + Scaling")
    struct VectorArithmeticExtensions {

        @Test("CGFloat scaled by ratio")
        func testCGFloatScaledByRatio() {
            #expect(Int(CGFloat(50).scaled(by: .golden)) == 80)
            #expect(Int(CGFloat(50).scaled(by: .golden, times: 2)) == 130)
        }

    }

}
