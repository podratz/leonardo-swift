import CoreGraphics
import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Orientations {

        @Test("Init(rawValue:)", arguments: [(.vertical, -1), (.horizontal, 1)] as [(Orientation, Int)])
        func testInitFromRawValue(orientation: Orientation, rawValue: Int) {
            #expect(orientation == Orientation(rawValue: rawValue))
        }

        @Test("allCases", arguments: [.horizontal, .vertical] as [Orientation])
        func testAllCasesContains(orientation: Orientation) {
            #expect(Orientation.allCases.contains(orientation) )
        }

        @Test("description", arguments: [
            (.horizontal, "Horizontal"),
            (.vertical, "Vertical")
        ] as [(Orientation, String)])
        func testDescription(orientation: Orientation, expectedDescription: String) {
            #expect("\(orientation)" == expectedDescription)
        }

        @Test("sign", arguments: [
            (.horizontal, 1),
            (.vertical, -1)
        ] as [(Orientation, Int)])
        func testSign(orientation: Orientation, sign: Int) {
            #expect(orientation.sign == sign)
        }

        @Test("id", arguments: [
            (.horizontal, 1),
            (.vertical, -1)
        ] as [(Orientation, Int)])
        func testSign(orientation: Orientation, id: Int) {
            #expect(orientation.id == id)
        }

        @Test("equality", arguments: [.horizontal, .vertical] as [Orientation])
        func testEquality(orientation: Orientation) {
            #expect(Orientation.horizontal != Orientation.vertical)
        }

    }
}
