import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Constants {

        @Test("values (up to 3 digits)", arguments: [
            ("1.000", .platinum ),
            ("1.618", .gold     ),
            ("2.414", .silver   ),
            ("3.303", .bronce   ),
            ("4.236", .copper   ),
            ("5.193", .nickel   ),
            ("6.162", .aluminium),
            ("7.140", .iron     ),
            ("8.123", .tin      ),
            ("9.110", .lead     ),
            ("1.325", .plastic  ),
            ("1.414", .sqrt2    ),
            ("1.732", .sqrt3    ),
            ("2.236", .sqrt5    )
        ] as [(String, Ratio)])
        func testConstantValue(rounded: String, ratio: Ratio) {
            #expect(rounded == String(format:"%.3f", ratio.quotient))
        }

        @Test("reciprocals")
        func testReciprocal() {
            let ratio = Ratio.gold
            #expect(ratio.reciprocal == 1 / ratio.quotient)
        }

        @Test("names", arguments: [
            ("Platinum",  .platinum    ),
            ("Golden",    .gold        ),
            ("Silver",    .silver      ),
            ("Bronce",    .bronce      ),
            ("Copper",    .copper      ),
            ("Nickel",    .nickel      ),
            ("Aluminium", .aluminium   ),
            ("Iron",      .iron        ),
            ("Tin",       .tin         ),
            ("Lead",      .lead        ),
            ("Plastic",   .plastic     ),
            ("Square Root of 2", .sqrt2),
            ("Square Root of 3", .sqrt3),
            ("Square Root of 5", .sqrt5)
        ] as [(String, Ratio)])
        func testConstantName(name: String, ratio: Ratio) {
            #expect(ratio.name == name)
        }

        @Test("Metals value increasing")
        func testMetalsOrdering() {
            #expect(0 < Ratio.metals.reduce(1) { partialResult, ratio in
                partialResult > ratio.quotient ? -1 : ratio.quotient
            })
        }

    }
}
