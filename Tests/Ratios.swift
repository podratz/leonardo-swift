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
    let angle = Ratio<Double>.gold.angle.degrees
    #expect(angle.isApproximatelyEqual(to: 137.5, absoluteTolerance: 0.1))
}

@Test("Neighborhood is correct")
func checkGoldenNeighborhoodCorrectness() {
    let neighborhood = Ratio<Double>.gold.neighborhood(3)
    let expected = neighborhood.map { String(format: "%.3f", $0) }
    #expect(expected == ["0.382", "0.618", "1.000", "1.618", "2.618"])
}

@Test("Neighborhood is correct with scale argument")
func checkGoldenNeighborhoodCorrectnessWithScale() {
    let neighborhood = Ratio<Double>.gold.neighborhood(3, scale: 50)
    let expected = neighborhood.map(Int.init)
    #expect(expected == [19, 30, 50, 80, 130])
}
