import Testing
@testable import Leonardo

@Test("Initialize Angle type from ratios", arguments: GeometricRatio<Double>.metals)
func testAngleFromRatio(ratio: GeometricRatio<Double>) {
    #expect(Angle(ratio) == ratio.angle)
}
