import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Init {

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
