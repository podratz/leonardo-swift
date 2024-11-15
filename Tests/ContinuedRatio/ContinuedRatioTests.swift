import Testing
@testable import Leonardo

@Suite("Continued Ratio")
struct ContinuedRatioTests {
    
    @Test("Init with terms") func testInit() {
        let ratio = ContinuedRatio(1, 2, 3)
        #expect(ratio.terms == [1, 2, 3])
    }
    
    @Test("Simplification") func testSimplified() {
        let ratioA = ContinuedRatio(1, 2, 3)
        let ratioB = ContinuedRatio(2, 4, 6)
        #expect(ratioA.simplified == ratioB.simplified)
    }

    @Test("Normalization") func testNormalization() {
        let ratioA = ContinuedRatio(1, 3, 6)
        let ratioB = ContinuedRatio(0.1, 0.3, 0.6)
        #expect(ratioA.normalized == ratioB.terms)
    }

}
