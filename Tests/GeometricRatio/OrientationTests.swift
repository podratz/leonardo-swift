import CoreGraphics
import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Orientations {

        @Test("allCases", arguments: [.landscape, .portrait] as [Orientation])
        func testAllCasesContains(orientation: Orientation) {
            #expect(Orientation.allCases.contains(orientation) )
        }

        @Test("description", arguments: [
            (.landscape, "Landscape"),
            (.portrait, "Portrait")
        ] as [(Orientation, String)])
        func testDescription(orientation: Orientation, expectedDescription: String) {
            #expect("\(orientation)" == expectedDescription)
        }

        @Test("sign", arguments: [
            (.landscape, 1),
            (.portrait, -1)
        ] as [(Orientation, Int)])
        func testSign(orientation: Orientation, sign: Int) {
            #expect(orientation.sign == sign)
        }

    }
}
