import Leonardo

let s = GeometricRatio<Double>.silver
let g = Ratio.golden

g.value

g.description
g.debugDescription

Ratio.golden.value
s.value

extension GeometricRatio where ValueType == Double {
    static var double: Self { .init(2) }
}

Ratio.double.value
