import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Init {

        @Test("with numerator and denominator") func testWithNumeratorAndDenominator() throws {
            #expect(try Ratio(numerator: 10, denominator: 20).value == Ratio(0.5).value)
        }

        @Test("with invalid denominator") func testWithInvalidDenominator() {
            #expect(throws: GeometricRatioError.invalidDenominator, "Division by zero") {
                try Ratio(numerator: 10, denominator: 0)
            }
        }

    }
}
