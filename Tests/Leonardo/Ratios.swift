import Testing
@testable import Leonardo

@Test("Round ratios correctly to 3 digits", arguments: [
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
func roundRatio(rounded: String, ratio: Ratio) {
    #expect(rounded == String(format:"%.3f", ratio.value))
}

@Test("Are ratios named correctly", arguments: [
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
func isMetalCorrectlyNamed(name: String, ratio: Ratio) {
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
    let goldenAngle = Ratio.golden.angle.degrees
    #expect(goldenAngle.isApproximatelyEqual(to: 137.5, absoluteTolerance: 0.1))
}

@Test("Neighborhood is correct")
func checkGoldenNeighborhoodCorrectness() {
    let neighborhood = Ratio.golden.neighborhood(radius: 2)
    let expected = neighborhood.map { String(format: "%.3f", $0) }
    #expect(expected == ["0.382", "0.618", "1.000", "1.618", "2.618"])
}

@Test("Neighborhood with default Radius is correct")
func checkGoldenNeighborhoodDefaultArgumentCorrectness() {
    let neighborhood = Ratio.golden.neighborhood()
    let expected = neighborhood.map { String(format: "%.3f", $0) }
    #expect(expected == ["0.618", "1.000", "1.618"])
}

@Test("applied works with all arguments")
func checkIfAppliedWorks() {
    #expect(Ratio.golden.applied() == Ratio.golden.value)
    #expect(Ratio.golden.applied(to: 50) == 50 * Ratio.golden.value)
    #expect(Ratio.golden.applied(times: 2) == .pow(Ratio.golden.value, 2))
    #expect(Ratio.golden.applied(to: 50, times: 2) == 50 * .pow(Ratio.golden.value, 2))

    // Edge cases
    #expect(Ratio.golden.applied(to: -50, times: 2) == -50 * .pow(Ratio.golden.value, 2))
    #expect(Ratio.golden.applied(to: 0) == 0)
    #expect(Ratio.golden.applied(times: 0) == 1)
    #expect(Ratio.golden.applied(to: 0, times: 0) == 0)
}

@Test("subscript with positive integer")
func checkSubscriptWorks() {
    #expect(Ratio.golden[2] == Ratio.golden.applied(times: 2))
}

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

@Test("the reciprocal of a ratio")
func testReciprocal() {
    let ratio = Ratio.golden
    #expect(ratio.reciprocal == 1 / ratio.value)
}
