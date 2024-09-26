import Testing
@testable import Leonardo

struct Constants {

    @Test("phi equals golden ratio")
    func testPhiEqualsGoldenRatio() {
        #expect(.phi == Ratio.golden.quotient)
    }

    @Test("tau equals two pi")
    func testTauEqualsTwoPi() {
        #expect(.tau == 2.0 * .pi)
    }

}
