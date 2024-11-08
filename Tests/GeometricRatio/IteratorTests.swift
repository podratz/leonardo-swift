import Testing
@testable import Leonardo

@Test func testNext() {
    #expect(Ratio.gold.next()?.quotient == Ratio.gold[2])
}
