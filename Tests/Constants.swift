import Testing
@testable import Leonardo

@Test("Phi is golden ratio")
func checkPhiIsGoldenRatio() {
    #expect(Ratio<Double>.golden.value == .phi)
}

@Test("Tau is correct")
func checkTauIsCorrect() {
    #expect(2 * Double.pi == .tau)
}
