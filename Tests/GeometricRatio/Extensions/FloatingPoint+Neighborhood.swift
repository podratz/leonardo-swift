import Testing
@testable import Leonardo

extension GeometricRatioTests.Extensions {

    @Suite("FloatingPoint + Neighborhood")
    struct FloatingPointNeighborhoodExtensions {

        @Test("Neighborhood on floating point")
        func testNeighborhoodOnFloatingPoint() {
            let ratio: Ratio = .golden
            let neighborhood = 1.neighborhood(ratio: ratio)
            #expect(neighborhood == [ratio.reciprocal, 1, ratio.quotient])
        }

    }
    
}
