import Testing
@testable import Leonardo

@Test("Phi is golden ratio")
func checkPhiIsGoldenRatio() {
    #expect(Ratio<Double>.gold.value == .phi)
}

@Test("Golden angle is correct")
func checkGoldenAngleIsCorrect() {
    #expect(Ratio<Double>.gold.angle.radians == .goldenAngle)
}

@Test("Tau is correct")
func checkTauIsCorrect() {
    #expect(2 * Double.pi == .tau)
}
