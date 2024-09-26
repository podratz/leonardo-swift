import Testing
@testable import Leonardo

@Test("Initialize Angle type from ratios", arguments: Ratio.metals)
func testAngleFromRatio(ratio: Ratio) {
    #expect(Angle(ratio) == ratio.angle)
}
