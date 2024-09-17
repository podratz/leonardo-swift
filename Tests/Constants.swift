import Testing
@testable import Leonardo

@Test("Phi is golden ratio")
func checkPhiIsGoldenRatio() {
    #expect(Ratio<Double>.golden.value == .phi)
}

@Test("Golden angle is correct")
func checkGoldenAngleIsCorrect() {
    #expect(Ratio<Double>.golden.angle.radians == .goldenAngle)
}

@Test("Tau is correct")
func checkTauIsCorrect() {
    #expect(2 * Double.pi == .tau)
}
