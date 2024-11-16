import Testing
@testable import Leonardo

@Suite("Continued Ratio")
struct ContinuedRatioTests {
    
    @Test("Init with terms") func testInitWithTerms() {
        let ratio = ContinuedRatio(1, 2, 3)
        #expect(ratio.terms == [1, 2, 3])
    }
    
    @Test("Init with geometric ratios") func testInitWithGeometricRatios() {
        let ratio = ContinuedRatio<Double>(.gold, numberOfTerms: 3)
        #expect(ratio.terms == [.pow(.phi, 2), .phi, 1])
        #expect(ratio.simpleRatios == [.gold, .gold])
    }
    
    @Test("Simplification") func testSimplified() {
        let ratioA = ContinuedRatio(2, 4, 6)
        let ratioB = ContinuedRatio(1, 2, 3)
        #expect(ratioA.simplified == ratioB)
    }

    @Test("Normalization") func testNormalization() {
        let ratioA = ContinuedRatio(1, 3, 6)
        let ratioB = ContinuedRatio(0.1, 0.3, 0.6)
        #expect(ratioA.normalized == ratioB)
    }

    @Test("Segment") func testSegment() {
        let ratio = ContinuedRatio(1, 3, 6)
        let segmentation = [10.0, 30.0, 60.0]
        #expect(ratio.segment(100) == segmentation)
    }

    @Test("Segmented extension") func testSegmentedExtension() {
        let ratio = ContinuedRatio(1, 3, 6)
        let segmentation = [10.0, 30.0, 60.0]
        #expect(100.segmented(by: ratio) == segmentation)
    }

    @Test("Simple ratios") func testSimpleRatios() {
        let ratioA = ContinuedRatio(1, 3, 6)
        let simpleRatiosA = [GeometricRatio(of: 1, to: 3), GeometricRatio(of: 3, to: 6)]
        #expect(ratioA.simpleRatios == simpleRatiosA)

        let ratioB = ContinuedRatio(1, 3)
        let simpleRatiosB = [GeometricRatio(of: 1, to: 3)]
        #expect(ratioB.simpleRatios == simpleRatiosB)

        let ratioC = ContinuedRatio(1)
        #expect(ratioC.simpleRatios == [])
    }
    
    @Test("Inversed") func testInversed() {
        let ratio = ContinuedRatio(1, 2, 3)
        #expect(ratio.inversed == ContinuedRatio(3, 2, 1))
    }
    
}
