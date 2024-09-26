import CoreGraphics
import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Orientations {

        @Test(arguments: [.automatic, .landscape, .portrait] as [Orientation])
        func testOrientationsContains(orientation: Orientation) {
            #expect(Orientation.allCases.contains(orientation) )
        }

        @Test(arguments: [
            (.automatic, "Automatic"),
            (.landscape, "Landscape"),
            (.portrait, "Portrait")
        ] as [(Orientation, String)])
        func testDescription(orientation: Orientation, expectedDescription: String) {
            #expect("\(orientation)" == expectedDescription)
        }

    }
}
