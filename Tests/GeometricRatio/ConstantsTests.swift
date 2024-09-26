import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Constants {

        @Test("values (up to 3 digits)", arguments: [
            ("1.000", .platinum ),
            ("1.618", .golden   ),
            ("2.414", .silver   ),
            ("3.303", .bronce   ),
            ("4.236", .copper   ),
            ("5.193", .nickel   ),
            ("6.162", .aluminium),
            ("7.140", .iron     ),
            ("8.123", .tin      ),
            ("9.110", .lead     ),
            ("1.325", .plastic  )]
              as [(String, Ratio)])
        func testConstantValue(rounded: String, ratio: Ratio) {
            #expect(rounded == String(format:"%.3f", ratio.value))
        }

        @Test("reciprocals")
        func testReciprocal() {
            let ratio = Ratio.golden
            #expect(ratio.reciprocal == 1 / ratio.value)
        }

        @Test("names", arguments: [
            ("Platinum",  .platinum ),
            ("Golden",    .golden   ),
            ("Silver",    .silver   ),
            ("Bronce",    .bronce   ),
            ("Copper",    .copper   ),
            ("Nickel",    .nickel   ),
            ("Aluminium", .aluminium),
            ("Iron",      .iron     ),
            ("Tin",       .tin      ),
            ("Lead",      .lead     ),
            ("Plastic",   .plastic  )]
              as [(String, Ratio)])
        func testConstantName(name: String, ratio: Ratio) {
            #expect(ratio.name == name)
        }

        @Test("Metals value increasing")
        func testMetalsOrdering() {
            #expect(0 < Ratio.metals.reduce(1, { partialResult, ratio in
                partialResult > ratio.value ? -1 : ratio.value
            }))
        }

    }
}
