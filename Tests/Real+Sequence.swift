import Testing
@testable import Leonardo

@Test("Sequence increases by ratio")
func checkIfGoldenSequenceIncreasesCorrectly() {
    let sequence = 50.sequence(upBy: .gold)
    let expected = sequence.prefix(3).map(Int.init)
    #expect(expected == [50, 80, 130])
}

@Test("Sequence decreases by ratio")
func checkIfGoldenSequenceDecreasesCorrectly() {
    let sequence = 50.sequence(downBy: .gold)
    let expected = sequence.prefix(3).map(Int.init)
    #expect(expected == [50, 30, 19])
}
