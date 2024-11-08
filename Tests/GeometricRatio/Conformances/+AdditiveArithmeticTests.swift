import Testing
@testable import Leonardo

@Test func addRatios() {
    let half = Ratio(1/2)
    
    let quarter = half + half
    #expect(quarter[1] == 0.25)
    
    let gold = Ratio.gold
    #expect(gold[1] + gold[-2] == 2)

    let twiceGold = gold + gold
    #expect(twiceGold[1].isApproximatelyEqual(to: 2.618, absoluteTolerance: 0.001))
    
    let goldPlusZero: Ratio = .gold + .zero
    #expect(goldPlusZero == .gold)
}
