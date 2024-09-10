import Testing
@testable import Leonardo

@Test("Increasing sequence by ratio")
func checkIfGoldenSequenceIncreasesCorrectly() {
    let sequence = 50.sequence(upBy: .gold)
    let expected = sequence.prefix(3).map(Int.init)
    #expect(expected == [50, 80, 130])
}

@Test("Decreasing sequence by ratio")
func checkIfGoldenSequenceDecreasesCorrectly() {
    let sequence = 50.sequence(downBy: .gold)
    let expected = sequence.prefix(3).map(Int.init)
    #expect(expected == [50, 30, 19])
}

@Test("Number upscales by ratio")
func checkIfNumberUpscalesCorrectly() {
    let scaled = 50.upscaled(by: .gold)
    #expect(Int(scaled) == 80)
}

@Test("Number downscales by ratio")
func checkIfNumberDownscalesCorrectly() {
    let scaled = 50.downscaled(by: .gold)
    #expect(Int(scaled) == 30)
}
