import Leonardo

// MARK: - Create a custom geometric ratio.

extension GeometricRatio where ValueType: FloatingPoint {
    static var double: Self { .init(2) }
}

let d = Ratio.double

for neighbor in d.neighborhood(radius: 2) {
    neighbor
}
