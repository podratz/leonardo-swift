import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Init {

        @Test("init(_ quotient:)")
        func testInitWithValue() {

            // just mandatory argument
            let halving = Ratio(0.5)
            #expect(halving.quotient == 0.5)
            #expect(halving.name == nil)

            // mandatory and explicit second argument
            let doubling = Ratio(2, name: "Doubling")
            #expect(doubling.quotient == 2)
            #expect(doubling.name == "Doubling")

        }

        @Test("init(numerator:denominator:)")
        func testInitWithNumeratorAndDenominator() throws {

            // invalid denominator argument
            #expect(throws: GeometricRatioError.invalidDenominator) {
                try Ratio(numerator: 10, denominator: 0)
            }

            // valid arguments
            #expect(try Ratio(numerator: 10, denominator: 20) == Ratio(0.5))

        }

    }
}
