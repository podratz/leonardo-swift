import CoreGraphics
import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Neighborhood {
        
        @Test("neighborhood around ratio")
        func checkGoldenNeighborhoodCorrectness() {
            let neighborhood = Ratio.golden.neighborhood(radius: 2)
            let expected = neighborhood.map { String(format: "%.3f", $0) }
            #expect(expected == ["0.382", "0.618", "1.000", "1.618", "2.618"])
        }

        @Test("neighborhood around ratio with default radius")
        func checkGoldenNeighborhoodDefaultArgumentCorrectness() {
            let neighborhood = Ratio.golden.neighborhood()
            let expected = neighborhood.map { String(format: "%.3f", $0) }
            #expect(expected == ["0.618", "1.000", "1.618"])
        }

    }
}
