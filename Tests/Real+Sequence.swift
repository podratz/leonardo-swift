import Testing
@testable import Leonardo

@Test("Test geometric progression on number with golden ratio")
func testGoldenProgression() {
    let progression = 50.progression(.gold)
    let successors = progression.prefix(3)
    let rounded = successors.map { Int($0.rounded()) }
    #expect(rounded == [50, 81, 131])
}
