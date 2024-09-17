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
      as [(String, GeometricRatio<Double>)])
func roundRatio(rounded: String, ratio: GeometricRatio<Double>) {
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
      as [(String, GeometricRatio<Double>)])
func isMetalCorrectlyNamed(name: String, ratio: GeometricRatio<Double>) {
    #expect(ratio.name == name)
}

@Test("Are metallic ratios increasing")
func areMetallicRatiosIncreasing() {
    #expect(0 < GeometricRatio.metals.reduce(1, { partialResult, ratio in
        partialResult > ratio.value ? -1 : ratio.value
    }))
}

@Test("Is golden angle approximately correct")
func checkGoldenAngle() {
    let goldenAngle = GeometricRatio<Double>.golden.angle.degrees
    #expect(goldenAngle.isApproximatelyEqual(to: 137.5, absoluteTolerance: 0.1))
}

@Test("Neighborhood is correct")
func checkGoldenNeighborhoodCorrectness() {
    let neighborhood = GeometricRatio<Double>.golden.neighborhood(radius: 2)
    let expected = neighborhood.map { String(format: "%.3f", $0) }
    #expect(expected == ["0.382", "0.618", "1.000", "1.618", "2.618"])
}

@Test("Neighborhood with default Radius is correct")
func checkGoldenNeighborhoodDefaultArgumentCorrectness() {
    let neighborhood = GeometricRatio<Double>.golden.neighborhood()
    let expected = neighborhood.map { String(format: "%.3f", $0) }
    #expect(expected == ["0.618", "1.000", "1.618"])
}

@Test("applied works with all arguments")
func checkIfAppliedWorks() {
    #expect(GeometricRatio<Double>.golden.applied() == GeometricRatio.golden.value)
    #expect(GeometricRatio<Double>.golden.applied(to: 50) == 50 * GeometricRatio.golden.value)
    #expect(GeometricRatio<Double>.golden.applied(times: 2) == .pow(GeometricRatio.golden.value, 2))
    #expect(GeometricRatio<Double>.golden.applied(to: 50, times: 2) == 50 * .pow(GeometricRatio.golden.value, 2))

    // Edge cases
    #expect(GeometricRatio<Double>.golden.applied(to: -50, times: 2) == -50 * .pow(GeometricRatio.golden.value, 2))
    #expect(GeometricRatio<Double>.golden.applied(to: 0) == 0)
    #expect(GeometricRatio<Double>.golden.applied(times: 0) == 1)
    #expect(GeometricRatio<Double>.golden.applied(to: 0, times: 0) == 0)
}

func checkSubscriptWorks() {
    #expect(GeometricRatio<Double>.golden[2] == GeometricRatio<Double>.golden.applied(times: 2))
}
