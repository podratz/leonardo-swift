import Leonardo


// MARK: Ratio-based sequences

let ratios = Ratio.gold.prefix(5)

let quotients = ratios.map(\.quotient)


// MARK: Angle-based sequences

let angles = ratios.map(\.angle)

let colors = angles.map(\.color)
let complex = angles.map(\.complex)
