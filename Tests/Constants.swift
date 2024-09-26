import Testing
@testable import Leonardo

@Test("Phi is golden ratio")
func checkPhiIsGoldenRatio() {
    #expect(Ratio.golden.value == .phi)
}

@Test("Tau is correct")
func checkTauIsCorrect() {
    #expect(2.0 * .pi == .tau)
}
