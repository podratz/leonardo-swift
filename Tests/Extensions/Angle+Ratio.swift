import Testing
@testable import Leonardo

@Test("Initialize Angle type from ratios", arguments: Ratio<Double>.metals)
func testAngleFromRatio(ratio: Ratio<Double>) {
    #expect(Angle(ratio) == ratio.angle)
}
