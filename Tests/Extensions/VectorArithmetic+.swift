import Testing
@testable import Leonardo
import CoreGraphics

@Test("Scale CGFloat")
func checkScalingOfCGFloat() {
    #expect(Int(CGFloat(50).scaled(by: .golden)) == 80)
    #expect(Int(CGFloat(50).scaled(by: .golden, times: 2)) == 130)
}