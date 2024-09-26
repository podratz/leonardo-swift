import Testing
@testable import Leonardo

struct Constants {

    @Test("phi equals golden ratio")
    func checkPhiIsGoldenRatio() {
        #expect(Ratio.golden.value == .phi)
    }

    @Test("tau equals two pi")
    func checkTauIsCorrect() {
        #expect(2.0 * .pi == .tau)
    }

}
