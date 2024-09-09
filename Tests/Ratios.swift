import Testing
@testable import Leonardo

@Test("Round ratios correctly to 3 digits", arguments: [
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
    ("1.325", .plastic  )]
      as [(String, Ratio<Double>)])
func roundRatio(rounded: String, ratio: Ratio<Double>) {
    #expect(rounded == String(format:"%.3f", ratio.value))
}

@Test("Are ratios named correctly", arguments: [
    ("Platinum",  .platinum ),
    ("Gold",      .gold     ),
    ("Silver",    .silver   ),
    ("Bronce",    .bronce   ),
    ("Copper",    .copper   ),
    ("Nickel",    .nickel   ),
    ("Aluminium", .aluminium),
    ("Iron",      .iron     ),
    ("Tin",       .tin      ),
    ("Lead",      .lead     ),
    ("Plastic",   .plastic  )]
      as [(String, Ratio<Double>)])
func isMetalCorrectlyNamed(name: String, ratio: Ratio<Double>) {
    #expect(ratio.name == name)
}

@Test("Are metallic ratios increasing")
func areMetallicRatiosIncreasing() {
    #expect(0 < Ratio.metals.reduce(1, { partialResult, ratio in
        partialResult > ratio.value ? -1 : ratio.value
    }))
}
