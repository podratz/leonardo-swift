import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Iterator {
        
        @Test func testNext() {
            #expect(Ratio.gold.next()?.quotient == Ratio.gold[2].quotient)
        }
        
    }
}
