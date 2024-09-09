import Testing
@testable import Leonardo

@Test func goldenRatioCorrect() async throws {
    let goldenRatio = Ratio<Double>.gold.value
    let expected = String(format:"%.3f", goldenRatio)
    #expect(expected == "1.618")
}
