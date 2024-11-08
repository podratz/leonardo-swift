import Testing
@testable import Leonardo

extension GeometricRatioTests.Extensions {

    @Suite("FloatingPoint + Sequence")
    struct FloatingPointSequenceExtensions {

        @Test("Increases by ratio")
        func checkIfGoldenSequenceIncreasesCorrectly() {
            let sequence = 50.sequence(upBy: .gold)
            let expected = sequence.prefix(3).map(Int.init)
            #expect(expected == [50, 80, 130])
        }

        @Test("Decreases by ratio")
        func checkIfGoldenSequenceDecreasesCorrectly() {
            let sequence = 50.sequence(downBy: .gold)
            let expected = sequence.prefix(3).map(Int.init)
            #expect(expected == [50, 30, 19])
        }

    }
}
