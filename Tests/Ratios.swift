import Testing
@testable import Leonardo

@Test("Round ratios correctly to 3 digits", arguments: [
    ("1.000", Ratio<Double>.platinum),
    ("1.618", Ratio<Double>.gold),
    ("2.414", Ratio<Double>.silver),
    ("3.303", Ratio<Double>.bronce),
    ("4.236", Ratio<Double>.copper),
    ("5.193", Ratio<Double>.nickel),
    ("6.162", Ratio<Double>.aluminium),
    ("7.140", Ratio<Double>.iron),
    ("8.123", Ratio<Double>.tin),
    ("9.110", Ratio<Double>.lead),
    ("1.325", Ratio<Double>.plastic),
]) func roundRatio(expected: String, ratio: Ratio<Double>) {
    #expect(expected == String(format:"%.3f", ratio.value))
}


@Test("Are metallic ratios increasing")
func areMetallicRatiosIncreasing() {
    #expect(0 < Ratio.metals.reduce(1, { partialResult, ratio in
        partialResult > ratio.value ? -1 : ratio.value
    }))
}

@Test("Are ratios named correctly", arguments: [
    ("Platinum" , Ratio<Double>.platinum),
    ("Gold"     , Ratio<Double>.gold),
    ("Silver"   , Ratio<Double>.silver),
    ("Bronce"   , Ratio<Double>.bronce),
    ("Copper"   , Ratio<Double>.copper),
    ("Nickel"   , Ratio<Double>.nickel),
    ("Aluminium", Ratio<Double>.aluminium),
    ("Iron"     , Ratio<Double>.iron),
    ("Tin"      , Ratio<Double>.tin),
    ("Lead"     , Ratio<Double>.lead),
    ("Plastic"  , Ratio<Double>.plastic),
])
func isMetalCorrectlyNamed(name: String, ratio: Ratio<Double>) {
    #expect(name == ratio.name)
}
