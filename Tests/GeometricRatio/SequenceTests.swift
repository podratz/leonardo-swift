import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Sequence {
        
        @Test("Implicit sequence") func testSequence() {
            let expected = [Ratio.gold[1], Ratio.gold[2], Ratio.gold[3]]
            #expect(expected == Array(Ratio.gold.prefix(3)))
        }
        
        @Test("Tail") func testTail() {
            let expected = [Ratio.gold[2], Ratio.gold[3], Ratio.gold[4]]
            #expect(expected == Array(Ratio.gold.tail.prefix(3)))
        }
        
    }
}
