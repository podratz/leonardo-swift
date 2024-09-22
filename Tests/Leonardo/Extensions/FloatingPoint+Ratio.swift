import Testing
@testable import Leonardo

@Test("Increasing sequence by ratio")
func checkIfGoldenSequenceIncreasesCorrectly() {
    let sequence = 50.sequence(upBy: .golden)
    let expected = sequence.prefix(3).map(Int.init)
    #expect(expected == [50, 80, 130])
}

@Test("Decreasing sequence by ratio")
func checkIfGoldenSequenceDecreasesCorrectly() {
    let sequence = 50.sequence(downBy: .golden)
    let expected = sequence.prefix(3).map(Int.init)
    #expect(expected == [50, 30, 19])
}

@Test("Number upscales by ratio")
func checkIfNumberUpscalesCorrectly() {
    let scaled = 50.upscaled(by: .golden)
    #expect(Int(scaled) == 80)
}

@Test("Number downscales by ratio")
func checkIfNumberDownscalesCorrectly() {
    let scaled = 50.downscaled(by: .golden)
    #expect(Int(scaled) == 30)
}

@Test("Neighborhood on floating point")
func testNeighborhoodOnFloatingPoint() {
    let ratio: Ratio = .golden
    let neighborhood = 1.neighborhood(ratio: ratio)
    #expect(neighborhood == [1 / ratio.value, 1, ratio.value])
}
