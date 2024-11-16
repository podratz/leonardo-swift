import Testing
@testable import Leonardo

@Suite("Continued Ratio")
struct ContinuedRatioTests {
    
    @Test("Init with terms") func testInit() {
        let ratio = ContinuedRatio(1, 2, 3)
        #expect(ratio.terms == [1, 2, 3])
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
        let ratio = ContinuedRatio(1, 3, 6)
        let simpleRatios = [GeometricRatio(of: 1, to: 3), GeometricRatio(of: 3, to: 6)]
        #expect(ratio.simpleRatios == simpleRatios)
    }

}
