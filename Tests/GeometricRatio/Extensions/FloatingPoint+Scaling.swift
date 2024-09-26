import Testing
@testable import Leonardo

extension GeometricRatioTests.Extensions {

    @Suite("FloatingPoint + Scaling")
    struct FloatingPointScalingExtensions {

        @Test("scaled up by ratio")
        func testScaledUp() {
            let scaled = 50.scaledUp(by: .golden)
            #expect(Int(scaled) == 80)
        }

        @Test("scaled down by ratio")
        func testScaledDown() {
            let scaled = 50.scaledDown(by: .golden)
            #expect(Int(scaled) == 30)
        }

    }

}
