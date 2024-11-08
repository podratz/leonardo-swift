import Testing
@testable import Leonardo

@Test func addRatios() {
    let half = Ratio(1/2)
    
    let quarter = half + half
    #expect(quarter[1].quotient == 0.25)
    
    let gold = Ratio.gold

    let twiceGold = gold + gold
    #expect(twiceGold[1].quotient.isApproximatelyEqual(to: 2.618, absoluteTolerance: 0.001))
    
    let goldPlusZero: Ratio = .gold + .zero
    #expect(goldPlusZero == .gold)
}
