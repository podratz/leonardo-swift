import CoreGraphics
import Testing
@testable import Leonardo

extension GeometricRatioTests {
    struct Literals {

        @Test("int literal")
        func testIntLiteral() {
            #expect(3 == Ratio(3))
        }

        @Test("float literal")
        func testFloatLiteral() {
            #expect(1.5 == Ratio(1.5))
        }

    }
}
