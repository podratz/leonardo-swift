import CoreGraphics
import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Orientations {

        @Test(arguments: [.automatic, .horizontal, .vertical] as [Orientation])
        func testOrientationsContains(orientation: Orientation) {
            #expect(Orientation.allCases.contains(orientation) )
        }
        
    }
}
