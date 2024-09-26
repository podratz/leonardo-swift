import CoreGraphics
import Testing
@testable import Leonardo

extension RatioTests {
    struct Literals {

        @Test("Expressible by integer literal")
        func intLiteral() {
            let ratio: Ratio = 3
            #expect(ratio.value == 3.0)
        }

        @Test("Expressible by float literal")
        func doubleLiteral() {
            let ratio: Ratio = 1.5
            #expect(ratio.value == 1.5)
        }

    }
}
