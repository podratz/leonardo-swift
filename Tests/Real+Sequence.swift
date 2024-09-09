import Testing
@testable import Leonardo

@Test("Sequence on number goes up by ratio")
func testGoldenSequence() {
    let sequence = 50.sequence(upBy: .gold)
    let prefix = sequence.prefix(3)
    let roundedPrefix = prefix.map { Int($0.rounded()) }
    #expect(roundedPrefix == [50, 81, 131])
}
