import Testing
@testable import Leonardo

@Test("Ratios rounded to 3 digits correct", arguments: [
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
]) func ratioCorrect(expected: String, ratio: Ratio<Double>) async throws {
    #expect(expected == String(format:"%.3f", ratio.value))
}
