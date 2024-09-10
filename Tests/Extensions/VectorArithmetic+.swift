import Testing
@testable import Leonardo
import CoreGraphics

@Test("Scale CGFloat")
func checkScalingOfCGFloat() {
    #expect(Int(CGFloat(50).scaled(by: .gold)) == 80)
    #expect(Int(CGFloat(50).scaled(by: .gold, times: 2)) == 130)
}
