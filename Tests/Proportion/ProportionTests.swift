import Testing
@testable import Leonardo

@Suite("Proportion")
struct ProportionTests {
    @Test("Init from numerator") func testInitFromNumerator() {
        let proportion = Proportion(.gold, numerator: 10)
        #expect(proportion.numerator == 10)
        #expect(proportion.denominator == Ratio.gold.reciprocal * 10)
    }
    
    @Test("Init from denominator") func testInitFromDenominator() {
        let proportion = Proportion(.gold, denominator: 10)
        #expect(proportion.denominator == 10)
        #expect(proportion.numerator == Ratio.gold.quotient * 10)
    }
}
