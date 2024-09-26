import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Equality {

        @Test("equality for ratios")
        func ratiosAreEqual() {
            let doublingUnnamed: Ratio = Ratio(2, name: "Doubling")
            let doublingNamed = Ratio(2, name: "Doubling")
            #expect(doublingUnnamed == doublingNamed)
        }

        @Test("equality for ratios with just same value")
        func ratiosAreEqualWithSameValueAlone() {
            let doublingUnnamed: Ratio = 2
            let doublingNamed = Ratio(2, name: "Doubling")
            #expect(doublingUnnamed == doublingNamed)
        }

    }
}
