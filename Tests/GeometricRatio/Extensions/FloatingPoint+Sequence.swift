import Testing
@testable import Leonardo

extension GeometricRatioTests.Extensions {

    @Suite("FloatingPoint + Sequence")
    struct FloatingPointSequenceExtensions {

        @Test("Increases by ratio")
        func checkIfGoldenSequenceIncreasesCorrectly() {
            let sequence = 50.sequence(upBy: .golden)
            let expected = sequence.prefix(3).map(Int.init)
            #expect(expected == [50, 80, 130])
        }

        @Test("Decreases by ratio")
        func checkIfGoldenSequenceDecreasesCorrectly() {
            let sequence = 50.sequence(downBy: .golden)
            let expected = sequence.prefix(3).map(Int.init)
            #expect(expected == [50, 30, 19])
        }

    }
}
