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

@Test("Is golden angle approximately correct")
func checkGoldenAngle() {
    let goldenAngle = Ratio<Double>.gold.angle.degrees
    #expect(goldenAngle.isApproximatelyEqual(to: 137.5, absoluteTolerance: 0.1))
}

@Test("Neighborhood is correct")
func checkGoldenNeighborhoodCorrectness() {
    let neighborhood = Ratio<Double>.gold.neighborhood(radius: 2)
    let expected = neighborhood.map { String(format: "%.3f", $0) }
    #expect(expected == ["0.382", "0.618", "1.000", "1.618", "2.618"])
}

@Test("Neighborhood with default Radius is correct")
func checkGoldenNeighborhoodDefaultArgumentCorrectness() {
    let neighborhood = Ratio<Double>.gold.neighborhood()
    let expected = neighborhood.map { String(format: "%.3f", $0) }
    #expect(expected == ["0.618", "1.000", "1.618"])
}

@Test("applied works with all arguments")
func checkIfAppliedWorks() {
    #expect(Ratio<Double>.gold.applied() == Ratio.gold.value)
    #expect(Ratio<Double>.gold.applied(to: 50) == 50 * Ratio.gold.value)
    #expect(Ratio<Double>.gold.applied(times: 2) == .pow(Ratio.gold.value, 2))
    #expect(Ratio<Double>.gold.applied(to: 50, times: 2) == 50 * .pow(Ratio.gold.value, 2))
    
    // Edge cases
    #expect(Ratio<Double>.gold.applied(to: -50, times: 2) == -50 * .pow(Ratio.gold.value, 2))
    #expect(Ratio<Double>.gold.applied(to: 0) == 0)
    #expect(Ratio<Double>.gold.applied(times: 0) == 1)
    #expect(Ratio<Double>.gold.applied(to: 0, times: 0) == 0)
}

func checkSubscriptWorks() {
    #expect(Ratio<Double>.gold[2] == Ratio<Double>.gold.applied(times: 2))
}
