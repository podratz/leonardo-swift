import Testing
@testable import Leonardo

@Test func testFiniteSequence() {
    let expected = [Ratio.gold[1], Ratio.gold[2], Ratio.gold[3]]
    #expect(expected == Ratio.gold.sequence(length: 3).map(\.quotient))
}

@Test func testInfiniteSequence() {
    let expected = [Ratio.gold[1], Ratio.gold[2], Ratio.gold[3]]
    #expect(expected == Ratio.gold.infiniteSequence.prefix(3).map(\.quotient))
}
